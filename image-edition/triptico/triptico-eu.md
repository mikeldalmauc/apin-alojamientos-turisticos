# Triptikoa

| | |
|---|---|
| ![Triptiko baten adibidea](image.png) | ![Triptikoa zabalduta](tirptico1.png) |

Triptiko bat hiru zatitan tolestutako orri bat da (normalean A4 horizontal bat), eta sei aurpegi ematen ditu: hiru kanpoan eta hiru barruan. Museo, ekitaldi, jatetxe edo enpresa baten liburuxka tipikoa da. Zeregin honetan bat diseinatu behar duzu, inprimategirako zuzen maketatu eta **inprimatu eta tolestu**.

> **Zeregin hau erronkan eskatuko da.** Lan egin erronkaren gaiarekin eta markarekin, triptikoa benetako entrega bat izan dadin eta ez ariketa solte bat.

## Zer egin behar da

Diseinatu triptiko bat **erronkaren gaiari** buruz (edo, oraindik definituta ez badago, aukeratzen duzun eta gero egokitu dezakezun gai bati buruz) eta entregatu inprimatuta eta tolestuta.

### Sei aurpegien egitura

Imajinatu orria zabalduta. **Kanpoko** aurpegiak (liburuxka itxita dagoela ikusten denak) ditu, ezkerretik eskuinera:

| Barruko hegala | Kontrazala | Azala |
|---|---|---|
| Amaierako testua, mapa bat, inprimaki bat, testigantzak... | Harremanetarako datuak, helbidea, sare sozialak, logoa, ordutegia, QR kodea. | Izenburua, irudi nagusia, logoa. Berez deitu behar du arreta. |

**Barruko** aurpegiak (irekitzean ikusten denak) hiru panel jarraian ditu eduki nagusiarekin: zer den, zer eskaintzen duen, zergatik, nola parte hartu... Hiru zutabe independente gisa edo tolesturak zeharkatzen dituen irudi jarraitu bakar gisa trata ditzakezu, basamortuaren adibidean bezala.

### Neurriak

- **A4 orri horizontala: 297 × 210 mm**, **3 mm-ko koskarekin** (*sangrado*) alde bakoitzeko (303 × 216 mm-ko dokumentua).
- **Hiru panel**, baina ez berdinak: barrurantz tolesten dena 2 edo 3 mm estuagoa izan behar da ondo itxi dadin. Adibidez **97 + 100 + 100 mm**, 97koa barruan geratzen dena izanik.
- Marraztu **gidak** tolesturetan (`Vista > Nueva guía`) eta errespetatu **5 mm-ko segurtasun-marjina** tolestura bakoitzaren eta ertzaren alde bakoitzean: testu edo logo bat ere ez da tolesturaren gainean geratu behar.
- **300 ppp** hasieratik. Ez eskalatu argazki txikiak gorantz.
- **CMYK** modua azken esportaziorako (RGBn lan egin eta amaieran bihurtu dezakezu, baina egiaztatu koloreak).

### Nola prestatu dokumentua

![Triptikoaren sei aurpegiak panel bakoitzaren neurriekin](img/paneles-triptico.png)

*Orria zabalduta bi aurpegietatik. Buelta ematean, panelen ordena alderantzikatu egiten da: panel estua (97 mm) ezkerrean geratzen da kanpoaldean eta eskuinean barrualdean, eta beti da barrurantz tolesten dena.*

- `Archivo > Nuevo`: zabalera **303 mm** eta altuera **216 mm** (A4 horizontala gehi 3 mm-ko koska alde bakoitzeko), **300 ppp**, 8 biteko RGB. **3579 × 2551 pixel** dira. Egin bi aldiz: `exterior.psd` eta `interior.psd`.
- Gida bertikalak `Vista > Nueva guía` bidez, milimetrotan dokumentuaren ezkerreko ertzetik:
  - Mozketa: 3 eta 300 mm. Segurtasun-marjina: 8 eta 295 mm.
  - Kanpoaldeko tolesturak: **100 eta 200 mm** (3 koska gehi 97, eta 100 gehiago). Barrualdeko tolesturak: **103 eta 203 mm** (3 gehi 100, eta 100 gehiago).
  - Segurtasun-marjina tolestura bakoitzaren alde bakoitzean, 5 mm aurretik eta ondoren: 95, 105, 195 eta 205 kanpoaldean; 98, 108, 198 eta 208 barrualdean.
- Gida horizontalak: 3 eta 213 mm (mozketa) eta 8 eta 208 mm (segurtasuna).

![Koska, mozketa-lerroa eta segurtasun-marjina](img/sangrado.jpg)

*Postalean bezala: atzeko planoa koskaraino iristen da (urdina), inprimategiak lerro gorritik mozten du eta ezer garrantzitsurik ez da berdetik pasatzen. Triptikoan, gainera, ezer garrantzitsurik ez da tolesturen segurtasun-gidetatik pasatzen.*

- **ppp**: 300 pixel hazbeteko 11,8 pixel milimetroko dira. 1500 pixel zabaleko argazki batek 100 mm-ko panel bat estaltzen du justu; txikiagoa bada, lausotuta aterako da.
- **CMYK**: lan egin RGBn, aktibatu `Vista > Ajuste de prueba > CMYK de trabajo` (`Ctrl+Y`) koloreak inprimategian nola aldatzen diren ikusteko, eta esportatu `Archivo > Guardar como > Photoshop PDF` bidez irteera-aukeretan CMYKra bihurtuz, mozketa-markekin eta koskarekin. Kanpoaldea eta barrualdea bi orrialdeko PDF batean elkartzeko erabili `Archivo > Automatizar > Presentación en PDF`.

### Edukia eta diseinua

- **Nortasun koherentea**: logoa, 3tik 5era koloreko paleta eta tipografia bat edo bi (bat izenburuetarako, bestea testurako) sei aurpegietan errepikatzen direnak. Branding praktikako marka baduzu, erabili.
- **Hierarkia**: izenburuak, azpizenburuak eta testua argi bereizita. Paragrafo-testua 9 eta 11 pt artean; ezer ez 8 pt-tik behera.
- **Irudiak** propioak edo banku libreetakoak, 300 ppp-tan eta Photoshopen landuta (doikuntzak, mozketak, maskarak, atzeko planoarekin edo forma grafikoekin integratuta).
- **Benetako testua**, ez *lorem ipsum*: idatzi edukia, laburra bada ere.
- Elementu grafikoak (formak, ikonoak, patroi bat) aurpegiak batzen eta irakurketa gidatzen lagunduko dutenak.

## Gomendatutako prozesua

1. Egin **zirriborro bat paperean**: tolestu A4 bat hirutan eta idatzi aurpegi bakoitzean zer joango den. Panelen ordena ez nahasteko modu bakarra da.
2. Sortu bi dokumentu Photoshopen (`exterior.psd` eta `interior.psd`) neurriekin, koskarekin eta gidekin.
3. Maketatu lehenengo testu-blokeak eta irudiak laukizuzen gris gisa, eta banaketak funtzionatzen duenean hasi diseinatzen.
4. Esportatu PDF bat, **inprimatu zirriborro gisa**, tolestu eta berrikusi: aurpegien ordena, marjinak, irakurgarritasuna, koloreak. Zuzendu eta inprimatu berriro.
5. Azken inprimaketa, ahal dela bi aldeetara eta 120 g-ko edo gehiagoko paperean.

## Entrega

- Kanpoaldearen eta barrualdearen `.psd` fitxategiak, geruzak izendatuta eta taldekatuta.
- Bi orrialdeko `.pdf` bat (kanpoaldea eta barrualdea) 300 ppp-tan, CMYKn, koskarekin eta mozketa-markekin zure bertsioak ahalbidetzen badu.
- **Triptikoa inprimatuta eta tolestuta**.
- Erabilitako irudien eta tipografien iturrien zerrenda.

## Irudien kredituak

- Irudietako paisaiaren argazkia: Vyacheslav Argenberg, [*Ergaki, Mountain lake Skazka, Rock formations, Sayan Mountains, Russia*](https://commons.wikimedia.org/wiki/File:Ergaki,_Mountain_lake_Skazka,_Rock_formations,_Sayan_Mountains,_Russia.jpg), Wikimedia Commons, CC BY 4.0.
- Eskemak praktika hauetarako sortu dira ImageMagick-ekin eta erabilera librekoak dira.
