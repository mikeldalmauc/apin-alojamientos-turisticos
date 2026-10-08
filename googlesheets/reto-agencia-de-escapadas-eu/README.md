# «Ihesaldi-agentzia» erronka · Irakaslearentzako gida

Hau `reto-agencia-de-escapadas` karpetako erronkaren euskarazko bertsioa da, eduki eta egitura berberekin: gaztelaniazko bertsioko aldaketa orok hemen ere egin behar du. *2. erronkako* zazpi HTML blokeak ordezkatzen ditu, datu-multzo bera mantenduz (Open Data Euskadiko Euskadiko ostatu turistikoak) eta lan mota bera: garbitu, iragazi, kalkulatu, aurrekontua egin, grafikoak egin eta aurkeztu. Hiru gauza aldatzen dira:

- **Tresna Google-ren Kalkulu-orriak da**, ez Excel. Horrek ahalbidetzen du talde bakoitzeko liburu partekatu bakarra, pertsona bakoitzeko iragazki-ikuspegiak, bertsioen historia urrats bakoitzeko fitxategi baten ordez, eta grafiko estekatuak azken dokumentuan.
- **Talde bakoitzak bezero desberdin bat du** (sei fitxa), beraz ez daude bi liburu berdin eta iragazkiek, formulek eta grafikoek arrazoi bat dute.
- **Urrats bakoitza Moodleko zeregin labur eta autonomo bat da**: zer egin behar den, zer ikasten den, eskema bat behar denean, egiaztapen-zerrenda bat eta nota igotzeko atal bat.

Menuen izenak euskaraz daude eta parentesi artean gaztelaniaz; funtzioen izenak gaztelaniaz (BUSCARV, SI, SUMA...), Google-k ez dituelako euskaratzen. Datu-multzoko zutabeen izenak (Tipo de Alojamiento, Capacidad...) gaztelaniaz daude, fitxategian horrela datozelako.

## Fitxategiak

| Fitxategia | Moodleko zeregina | Orduak | Ebaluazioa |
|---|---|---|---|
| [00-erronka.md](00-erronka.md) | Aurkezpena, bezeroak, arauak, liburua sortu eta partekatu | 1 | Entregatuta / entregatu gabe |
| [01-prestatu-datuak.md](01-prestatu-datuak.md) | Inportatu, Datuak eta Garbiketa orriak, zutabeak kendu, zenbatu | 3 | Gai / Ez gai |
| [02-arakatu-eta-aukeratu.md](02-arakatu-eta-aukeratu.md) | Iragazkiak, iragazki-ikuspegiak, baldintzapeko formatua, taula dinamikoa, bost hautagai | 3 | Gai / Ez gai |
| [03-kalkulatu-kostuak.md](03-kalkulatu-kostuak.md) | Bezeroa eta Tarifak orriak, BUSCARV, erreferentzia absolutuak, MIN, MAX, PROMEDIO, SI | 3 | Gai / Ez gai |
| [04-aurrekontua-balidazioarekin.md](04-aurrekontua-balidazioarekin.md) | Aurrekontua goitibeherakoekin, kontrol-laukiak, semaforoa, B plana, babesa | 3 | Gai / Ez gai |
| [05-grafikoak.md](05-grafikoak.md) | Datuekin konektatutako hiru grafiko | 2 | Gai / Ez gai |
| [06-aurkeztu-proposamena.md](06-aurkeztu-proposamena.md) | Proposamena fitxa, grafiko estekatuak dituen dokumentua, PDFa, demoa, errubrika | 2 | Nota 10etik |

Irudiak `img/` karpetan daude (eskemak euskaraz; argazkiak eta Google-ren laguntzako BUSCARV adibidea gaztelaniazko bertsioko berberak dira). 2026ko irailaren 30ean deskargatutako datuen kopia goiko karpetan dago (`../alojamientos turisticos.xlsx`), atariak huts egiten badu.

### Moodlera igotzea

Urrats bakoitza bi formatutan dago:

- `.md` fitxategia, editatzeko. Zerbait aldatzen baduzu, sortu berriro `.html` fitxategia goiko karpetako bihurgailuarekin, Git Bash-etik:

  ```
  perl ../md2html.pl 03-kalkulatu-kostuak.md 03-kalkulatu-kostuak.html eu "CIFP Zornotza LHII · Aplikazio Ofimatikoak · «Ihesaldi-agentzia» erronka"
  ```
- Izen bereko `.html` fitxategia, Moodlerako: estiloak lerroan eta irudiak barruan ditu, beraz ez dago ezer gehiago igo beharrik. Zeregina sortzean, deskribapenean ireki editorearen **iturburu-kodea** (`<>` botoia), itsatsi fitxategiaren edukia eta gorde. Dagoen bezala ere igo dezakezu *Fitxategia* edo *Orria* motako baliabide gisa. Abisuak (aholkua, oharra, kontuz) koloretako kutxa gisa agertzen dira.

Markdowna itsastea nahiago baduzu, aukeratu **Markdown** formatua editorearen azpian eta igo `img/` karpetako irudiak eskuz; `> [!TIP]` abisuak aipu gisa ikusiko dira.

## Liburuak urrats bakoitzaren amaieran izan behar dituen orriak

| Urratsa | Orri berriak |
|---|---|
| 00 | `1. orria` taldearekin, kideekin eta bezeroarekin |
| 01 | `Datuak` (jatorrizkoa osorik), `Garbiketa` (17 zutabe), `Erregistroa`, `Erantzunak`, `Probak` (aukerakoa) |
| 02 | Iragazki-ikuspegiak `Garbiketa` orrian (gutxienez hiru, bat `X bezeroa · hautagaiak`), `Laburpena` (taula dinamikoa), `Hautagaiak` (A:I, bost errenkada) |
| 03 | `Bezeroa`, `Tarifak` (A1:B9 eta D1:E9), J:O zutabeak `Hautagaiak` orrian, A9:B12 laburpena |
| 04 | `Tarifak` G1:H18, `Aurrekontua`, `B plana`, babesak |
| 05 | `Grafikoak` hiru grafikorekin eta A20:B28 taularekin |
| 06 | `Proposamena` lehen fitxa gisa, Google-ren dokumentua eta PDFa |

`Garbiketa` orriko zutabeen ordena 01. urratseko irudia jarraitzen badute: A Nombre, B Tipo de Alojamiento, C Categoría, D Capacidad, E Municipio, F Provincia, G Marcas, H Teléfono, I Email, J WEB, K Restaurante, L Sala de Reuniones, M Surfing, N Diversidad functional física, O LATWGS84, P LONWGS84, Q Signatura. 02. eta 05. urratsetako formulek ordena hori ematen dute aurrez eta ohartarazten dute.

## Sei bezeroak eta zer aurkitu behar duten

2026ko irailaren 30eko fitxategiarekin egiaztatuta (1.469 ostatu).

| Bezeroa | Pertsonak · gauak · muga | Gutxieneko iragazkia | Betetzen duten hautagaiak |
|---|---|---|---|
| A · Etxeberria familia | 4 · 3 · 200 € | Provincia = Gipuzkoa, Tipo = Agroturismos edo Casas Rurales, Capacidad ≥ 4 | 205 |
| B · Surflari koadrila | 6 · 2 · 120 € | Surfing = 1, Capacidad ≥ 6 (edozein mota) | 36 |
| C · Aneren agur-festa | 10 · 2 · 170 € | Provincia = Araba/Álava, Tipo = Casas Rurales, Agroturismos edo Apartamentos, Capacidad ≥ 10 | 93 |
| D · Zubiri enpresa | 15 · 1 · 180 € | Municipio = Bilbao, Tipo = Hoteles, Sala de Reuniones = 1, Restaurante = 1, Capacidad ≥ 15 | 20 |
| E · Ikasketa-bidaia | 26 · 2 · 100 € | Provincia = Bizkaia, Tipo = Campings edo Albergues, Capacidad ≥ 26 | 34 |
| F · Aitona eta amona | 2 · 2 · 320 € | Marcas-ek «Rioja Alavesa» du, Restaurante = 1 | 16 |

Mugak doituta daude aukerarik begi-bistakoena beti sar ez dadin: familiari agroturismoa piknikarekin kuadratzen zaio baina ez jatetxearekin; koadrilari ez zaio hotela ateratzen; enpresari hiru edo lau izarreko hotel bat sartzen zaio baina ez bost izarrekoa; aitona-amonei lau izarrekoa sartzen zaie eta bost izarrekoa ihes egiten die (Marqués de Riscal, 150 € gaueko gehigarriarekin). Talde batek bezero propioa nahi badu, balio du, aurretik onartzen baduzu eta gutxienez bost hautagai geratzen badira.

## 01. urratseko soluzioak

| Galdera | Erantzuna 2026/09/30eko fitxategiarekin |
|---|---|
| 1.1 | 1.469 ostatu (1.470 errenkada goiburuarekin) eta 52 zutabe |
| 1.2 | 8 zutabe huts: Accesible, Descripción del Icono de Accesibilidad, Importancia, Nombre lugar, Dirección (bigarrena), Teléfono (bigarrena), Correo electrónico, Página web. Ia hutsak: Actividades Gastronómicas (datu 1), Autocaravana (3), Visita Guiada (4), Calidad eta bere deskribapena (12) |
| 1.3 | *Dirección* eta *Teléfono* bi aldiz agertzen dira (bigarren aldian, hutsik) |
| 1.4 | Telefonorik gabe 233 (% 15,9), emailik gabe 80 (% 5,4), webik gabe 418 (% 28,5) |
| 1.5 | S (551), 1 (316), 2 (305), 3 (187), 4 (82), 5 (11), T (9), P (8). Zenbakiak eta letrak nahasten ditu: ezin da batez bestekoa egin, eta zenbakiekin egingo balitz ere ez luke ezer esan nahiko (2ko pentsio bat ez da 4ko hotel baten «erdia») |
| 1.6 | 2 ostatu 0 edukierarekin: MUNDAKA apartamentua eta Igeldoko autokarabana-gunea. Zentzuzkoena uztea eta idaztea da, edo kentzea eta idaztea; balio ez duena ezer ez esatea da |

Zuzentzeko beste datu erabilgarri batzuk: 216 udalerri desberdin; errepikatzen diren 58 izen (MADDIOLA, LIDAR, LEGAZPIDOCE, ITXASPE eta EL PUERTO hiru aldiz agertzen dira) eta 21 signatura errepikatu; gehieneko edukiera 1.400 (kanpin bat), batez bestekoa 43. Motaren arabera: Hoteles 336, Pensiones 330, Casas Rurales 298, Apartamentos 216, Agroturismos 159, Albergues 84, Campings 26, Hotel-Apartamento 20. Probintziaren arabera: Gipuzkoa 667, Bizkaia 566, Araba/Álava 236. S kategoriako 69 «Hoteles» edo P, S eta T dituzten kanpinak adibide onak dira bat ez datozen datuez hitz egiteko.

## Simulatutako tarifak

Oinarria pertsona eta gau bakoitzeko: Campings 14, Albergues 22, Pensiones 30, Apartamentos 34, Agroturismos 38, Casas Rurales 42, Hotel-Apartamento 55, Hoteles 60. Kategoriaren araberako gehigarria: 1 → 0, 2 → 6, 3 → 15, 4 → 35, 5 → 90, S → 0, P → 8, T → 0. Garraioa: Bizikleta 0, Auto partekatua 12, Trena edo autobusa 18, Alokatutako autobusa 25. Otorduak eguneko: Piknika 8, Eguneko menua 15, Jatetxea 30. Jarduerak: Bat ere ez 0, Museoa 10, Bisita gidatua 12, Upategia dastaketarekin 20, Abentura-parkea 28, Surf-eskola 35. Asegurua 5 €. Aurretiazko erreserbagatiko deskontua, ostatuaren % 10.

A bezeroarentzako adibidea agroturismo batekin (38 € × 3 gau = 114 €), auto partekatua (12), eguneko menua lau egunez (60) eta bisita gidatua (12): 198 € pertsonako, 2 € gelditzen dira. Egunetako bitan piknikarekin 184 € ateratzen da.

## Zer begiratu urrats bakoitza zuzentzean

- **01**: `Datuak` osorik egotea (52 zutabe) eta erantzunek formula izatea, ez teklatutako zenbakiak. *Kendu bikoiztuak* izenaren arabera erabili ez izana.
- **02**: `Datuak > Iragazki-ikuspegiak` ireki eta izenarekin daudela ikustea; `Garbiketa` iragazita ez geratzea; bost hautagaiek fitxa betetzea eta bi motatakoak izatea.
- **03**: `Hautagaiak!M3` gelaxkan klik egin eta `Bezeroa!$B$3` duen formula bat ikustea; `Bezeroa` orrian gauak aldatu eta dena mugitzen dela ikustea; `#N/D` bat ere ez.
- **04**: `Aurrekontua!B2` gelaxkan asmatutako izen bat idatzi eta baztertzea; deskontua markatu eta guztizkoa jaisten ikustea; `B plana` orriak bere muga propioa izatea (`=Bezeroa!B4*0,85`).
- **05**: jarduera aldatu eta zirkularra mugitzen ikustea; hirugarren grafikoa taula dinamikoarekin bat etortzea.
- **06**: fitxa formulekin eginda egotea (`Proposamena!B4` `=Aurrekontua!B2` izan behar da, ez testu bat), dokumentuak grafiko estekatua izatea eta demoan batek baino gehiagok hitz egitea.

## Kredituak

Wikimedia Commons-eko argazkiak, 00. urratsean egile eta lizentziarekin aipatuak (CC BY-SA 3.0 eta 4.0). 03. urratseko BUSCARV irudia [Google Sheets-en laguntzakoa](https://support.google.com/docs/answer/3093318?hl=es) da, © Google, hezkuntza-helburuekin erabilia. Eskemak (`erronkaren-fluxua`, `orriaren-anatomia`, `ordenatu-vs-iragazi`, `iragazki-ikuspegia`, `erreferentziak`, `buscarv`, `datuen-balidazioa`, `aurrekontuaren-semaforoa`, `grafiko-motak`, `gelditzen-diren-zutabeak`) ImageMagick-ekin sortu dira erronka honetarako eta erabilera librekoak dira.
