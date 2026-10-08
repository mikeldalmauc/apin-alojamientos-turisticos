#!/usr/bin/perl
# md2html.pl IN.md OUT.html LANG(es|eu) [FOOTER]
# Convierte el subconjunto de Markdown usado en las guías a HTML con estilos en línea
# (para pegar en Moodle) e imágenes incrustadas en base64.
use strict; use warnings; use utf8;
use MIME::Base64;
use File::Basename;

my ($in, $out, $lang, $footer) = @ARGV;
$lang ||= 'es';
open my $fh, '<:encoding(UTF-8)', $in or die "No puedo abrir $in: $!";
my @lines = <$fh>; close $fh; chomp @lines; s/\r$// for @lines;
my $dir = dirname($in);

my %S = (
  wrap  => 'font-family: Arial, Helvetica, sans-serif; color: #1f2937; max-width: 900px; margin: 0 auto; line-height: 1.55; font-size: 15px; padding: 8px 14px 30px;',
  h1    => 'color: #0f2438; font-size: 26px; margin: 20px 0 16px; padding-bottom: 8px; border-bottom: 3px solid #16324f;',
  h2    => 'color: #0f2438; font-size: 21px; margin: 30px 0 8px;',
  h3    => 'color: #0f2438; font-size: 18px; margin: 22px 0 6px;',
  p     => 'margin: 10px 0;',
  cap   => 'margin: 2px 0 18px; color: #5f6368; font-size: 14px;',
  ul    => 'margin: 8px 0 12px; padding-left: 24px;',
  ol    => 'margin: 8px 0 12px; padding-left: 24px;',
  li    => 'margin: 4px 0;',
  table => 'width: 100%; border-collapse: collapse; margin: 14px 0 20px; font-size: 14px;',
  th    => 'background: #16324f; color: #fff; text-align: left; padding: 8px 10px; font-size: 13px; border: 1px solid #16324f; vertical-align: top;',
  td    => 'border: 1px solid #d7dde3; padding: 8px 10px; vertical-align: top;',
  code  => "background: #f1f3f4; padding: 1px 5px; border-radius: 3px; font-family: Consolas, 'Courier New', monospace; font-size: 0.93em;",
  img   => 'max-width: 100%; height: auto; display: block; margin: 14px 0 6px;',
  a     => 'color: #1a73e8;',
  bq    => 'border-left: 5px solid #9aa0a6; background: #f4f6f8; padding: 10px 14px; margin: 18px 0; color: #3c4043;',
  foot  => 'margin-top: 36px; padding-top: 10px; border-top: 1px solid #d7dde3; color: #5f6368; font-size: 12px;',
  pre   => "background: #f1f3f4; padding: 10px 12px; border-radius: 4px; font-family: Consolas, 'Courier New', monospace; font-size: 13px; white-space: pre-wrap; word-break: break-all; margin: 8px 0;",
);

my @out; my $i = 0; my $title = '';

# bloque de código con vallas ```; $i apunta a la línea de apertura
sub fenced {
  my @code; $i++;
  while ($i < @lines && $lines[$i] !~ /^\s*```/) { my $c = $lines[$i]; $c =~ s/^\s{0,2}//; push @code, $c; $i++; }
  $i++ if $i < @lines;
  return "<pre style=\"$S{pre}\">" . esc(join "\n", @code) . '</pre>';
}
my %CALL = (TIP => ['#188038','#e6f4ea'], NOTE => ['#1a73e8','#e8f0fe'], WARNING => ['#d93025','#fce8e6'], IMPORTANT => ['#9334e6','#f3e8fd'], CAUTION => ['#d93025','#fce8e6']);
my %LAB = $lang eq 'eu'
  ? (TIP=>'Aholkua', NOTE=>'Oharra', WARNING=>'Kontuz', IMPORTANT=>'Garrantzitsua', CAUTION=>'Kontuz')
  : (TIP=>'Consejo', NOTE=>'Nota', WARNING=>'Cuidado', IMPORTANT=>'Importante', CAUTION=>'Cuidado');

sub esc { my $t = shift; $t =~ s/&/&amp;/g; $t =~ s/</&lt;/g; $t =~ s/>/&gt;/g; return $t; }

sub img_tag {
  my ($alt, $src) = @_;
  my $path = "$dir/$src"; $path =~ s/%20/ /g;
  my $data = $src;
  if (-f $path) {
    local $/; open my $f, '<:raw', $path or die "No puedo leer $path"; my $bin = <$f>; close $f;
    my $mime = $path =~ /\.png$/i ? 'image/png' : $path =~ /\.gif$/i ? 'image/gif' : $path =~ /\.svg$/i ? 'image/svg+xml' : 'image/jpeg';
    $data = "data:$mime;base64," . encode_base64($bin, '');
  } else { warn "AVISO: imagen no encontrada: $path\n"; }
  return '<img src="' . $data . '" alt="' . $alt . '" style="' . $S{img} . '">';
}

sub inline {
  my $t = shift;
  my @codes;
  $t =~ s/`([^`]+)`/push @codes, $1; "\x{1}" . $#codes . "\x{2}"/ge;
  $t = esc($t);
  $t =~ s/&lt;br&gt;/<br>/g;
  $t =~ s/!\[([^\]]*)\]\(([^)]+)\)/img_tag($1, $2)/ge;
  $t =~ s/\[([^\]]+)\]\(([^)\s]+)\)/'<a href="' . fix_link($2) . '" style="' . $S{a} . '">' . $1 . '<\/a>'/ge;
  $t =~ s/\*\*(.+?)\*\*/<strong>$1<\/strong>/g;
  $t =~ s/(?<![\w*\\])\*(?!\s)(.+?)(?<!\s)\*(?![\w*])/<em>$1<\/em>/g;
  $t =~ s/\x{1}(\d+)\x{2}/'<code style="' . $S{code} . '">' . esc($codes[$1]) . '<\/code>'/ge;
  return $t;
}

sub fix_link { my $u = shift; $u =~ s/\.md$/.html/ unless $u =~ /^https?:/; return $u; }

sub split_cells {
  my $r = shift; $r =~ s/^\s*\|//; $r =~ s/\|\s*$//; $r =~ s/\\\|/\x{3}/g;
  my @c = split /\|/, $r, -1; for (@c) { s/\x{3}/|/g; s/^\s+|\s+$//g; } return @c;
}

sub table {
  my @r = @{ shift() };
  my $sep = (@r > 1 && $r[1] =~ /^\s*\|\s*:?-+/) ? 1 : 0;
  my @align;
  if ($sep) { @align = map { /^:-+:$/ ? 'center' : /-+:$/ ? 'right' : 'left' } split_cells($r[1]); }
  my $html = "<table style=\"$S{table}\">";
  for my $k (0 .. $#r) {
    next if $sep && $k == 1;
    my @c = split_cells($r[$k]);
    my $tag = ($sep && $k == 0) ? 'th' : 'td';
    $html .= '<tr>';
    for my $j (0 .. $#c) {
      my $st = $S{$tag}; $st .= " text-align: $align[$j];" if $align[$j] && $align[$j] ne 'left';
      $html .= "<$tag style=\"$st\">" . inline($c[$j]) . "</$tag>";
    }
    $html .= '</tr>';
  }
  return $html . '</table>';
}

sub parse_list {
  my $html = ''; my @stack;
  while ($i < @lines && $lines[$i] =~ /^(\s*)([-*]|\d+\.)\s+(.*)$/) {
    my ($ind, $mark, $txt) = (length $1, $2, $3);
    my $type = $mark =~ /\d/ ? 'ol' : 'ul';
    my $pre = '';
    if ($txt =~ s/^\[( |x|X)\]\s+//) { $pre = $1 eq ' ' ? '&#9744; ' : '&#9745; '; }
    while (@stack && $ind < $stack[-1][1]) { my $s = pop @stack; $html .= "</li></$s->[0]>"; }
    if (@stack && $ind == $stack[-1][1] && $stack[-1][0] ne $type) { my $s = pop @stack; $html .= "</li></$s->[0]>"; }
    if (@stack && $ind == $stack[-1][1]) { $html .= '</li>'; }
    else { $html .= "<$type style=\"$S{$type}\">"; push @stack, [$type, $ind]; }
    $html .= "<li style=\"$S{li}\">$pre" . inline($txt);
    $i++;
    while ($i < @lines) {
      if ($lines[$i] =~ /^\s*$/ && $i+1 < @lines && $lines[$i+1] =~ /^\s{2,}```/) { $i++; next; }
      if ($lines[$i] =~ /^\s{2,}```/) { $html .= fenced(); next; }
      last unless $lines[$i] =~ /^\s{2,}(?![-*]\s|\d+\.\s)(\S.*)$/;
      $html .= ' ' . inline($1); $i++;
    }
  }
  while (@stack) { my $s = pop @stack; $html .= "</li></$s->[0]>"; }
  return $html;
}

while ($i < @lines) {
  my $l = $lines[$i];
  if ($l =~ /^\s*$/) { $i++; next; }
  if ($l =~ /^(#{1,3})\s+(.*)$/) {
    my $lvl = length $1; my $raw = $2; $title = $raw if $lvl == 1 && !$title;
    push @out, "<h$lvl style=\"$S{\"h$lvl\"}\">" . inline($raw) . "</h$lvl>"; $i++; next;
  }
  if ($l =~ /^!\[([^\]]*)\]\(([^)]+)\)\s*$/) { push @out, img_tag(esc($1), $2); $i++; next; }
  if ($l =~ /^\s*\|/) {
    my @rows; while ($i < @lines && $lines[$i] =~ /^\s*\|/) { push @rows, $lines[$i]; $i++; }
    push @out, table(\@rows); next;
  }
  if ($l =~ /^>\s?\[!(\w+)\]\s*(.*)$/) {
    my $type = uc $1; my @body; push @body, $2 if length $2; $i++;
    while ($i < @lines && $lines[$i] =~ /^>\s?(.*)$/) { push @body, $1; $i++; }
    my ($col, $bg) = @{ $CALL{$type} || $CALL{NOTE} }; my $lab = $LAB{$type} || $type;
    push @out, "<div style=\"border-left: 5px solid $col; background: $bg; padding: 12px 14px; margin: 18px 0; border-radius: 4px;\"><strong style=\"color: $col;\">$lab.</strong> " . inline(join ' ', grep { length } @body) . '</div>';
    next;
  }
  if ($l =~ /^>/) {
    my @body; while ($i < @lines && $lines[$i] =~ /^>\s?(.*)$/) { push @body, $1; $i++; }
    push @out, "<blockquote style=\"$S{bq}\">" . inline(join ' ', grep { length } @body) . '</blockquote>'; next;
  }
  if ($l =~ /^\s*```/) { push @out, fenced(); next; }
  if ($l =~ /^\s*([-*]|\d+\.)\s+/) { push @out, parse_list(); next; }
  if ($l =~ /^-{3,}\s*$/) { push @out, '<hr style="border: 0; border-top: 1px solid #d7dde3; margin: 20px 0;">'; $i++; next; }
  my @p;
  while ($i < @lines && $lines[$i] !~ /^\s*$/ && $lines[$i] !~ /^(#{1,3}\s|\s*\||>|!\[|\s*[-*]\s|\s*\d+\.\s|\s*```)/) { push @p, $lines[$i]; $i++; }
  my $txt = inline(join ' ', @p);
  if ($txt =~ /^<em>.*<\/em>$/s) { push @out, "<p style=\"$S{cap}\">$txt</p>"; }
  else { push @out, "<p style=\"$S{p}\">$txt</p>"; }
}

my $body = join "\n", @out;
$body .= "\n<div style=\"$S{foot}\">" . esc($footer) . '</div>' if $footer;
open my $oh, '>:encoding(UTF-8)', $out or die "No puedo escribir $out: $!";
print $oh "<!DOCTYPE html>\n<html lang=\"$lang\">\n<head>\n<meta charset=\"utf-8\">\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n<title>" . esc($title) . "</title>\n</head>\n<body style=\"margin: 0; background: #fff;\">\n<div style=\"$S{wrap}\">\n$body\n</div>\n</body>\n</html>\n";
close $oh;
print "ok $out\n";
