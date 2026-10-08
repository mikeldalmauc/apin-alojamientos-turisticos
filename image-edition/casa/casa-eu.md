# Sortu zure fantasiazko etxea

![Photobashing adibidea](image.png)

Lau argazki desberdinetatik abiatuta (laku-paisaia bat, gaztelu bat, uraren gaineko etxe bat eta zubi elurtu bat zeharkatzen duen pertsona bat) irudi bakar bat muntatu da: ametsetako etxea lakuaren gainean. Teknika honi **photobashing** deitzen zaio: irudi berri bat eraikitzea argazki-zatiak nahastuz, emaitzak argazki bakar bat dirudien moduan.

## Zer egin behar da

Diseinatu **zure etxe ideala** (edo pertsonaia baten etxea, etxe ezinezko bat, ipuin bateko etxe bat...) gutxienez **4 argazki** desberdin konbinatuz:

1. **Oinarrizko paisaia** bat, argia, eguneko ordua eta atmosfera markatuko dituena (lakua, mendia, hondartza, hiria, basamortua, hodeiak...).
2. **Eraikin** bat edo gehiago, etxea osatzeko konbinatuko dituzunak (gaztelu baten dorrea, txabola baten teilatua, eraikin moderno baten beirategia...).
3. **Giro-elementuak**: pertsonak, animaliak, txalupak, zuhaitzak, farolak, bideak, txoriak... eszenak zerbait konta dezan behar den guztia.

Bilatu argazkiak irudi-banku libreetan (Pexels, Unsplash, Pixabay) eta apuntatu bakoitzaren iturria.

## Beharko dituzun teknikak

### Geruza-maskarak

**Geruza-maskara** bat (*máscara de capa*) geruzari itsatsitako zuri-beltzeko irudi bat da, zein zati ikusten diren erabakitzen duena: maskara zuria den lekuan geruza ikusten da, beltza den lekuan ezkutatzen da eta grisa den lekuan gardentzen da. Mozteko modu zuzena da: borragomak pixelak suntsitzen ditu, maskarak ezkutatu bakarrik egiten ditu eta beti berriro margotu dezakezu.

![Geruza, maskara eta emaitza](img/mascara-de-capa.jpg)

*Geruza, bere maskara eta emaitza. Zuria ikusten da, beltza desagertzen da eta maskararen ertz lausotuak trantsizio leuna ematen du.*

- Hautapen aktibo batekin, Geruzak paneleko maskara-botoiak (zirkulu bat duen laukizuzena) hautatuta ez zegoen guztia ezkutatzen duen maskara bat sortzen du.
- Ukitzeko, egin klik maskararen miniaturan eta margotu **Pintzelarekin**: beltzak ezkutatzen du, zuriak berreskuratzen du. `X` teklak bi koloreak trukatzen ditu eta `D` teklak zuri-beltzean jartzen ditu.
- `Alt+klik` miniaturan maskara bakarrik erakusten du; `Shift+klik` une batez desaktibatzen du konparatzeko; `Ctrl+klik` hautapen bihurtzen du.
- **Hautatu eta maskara aplikatu** (`Selección > Seleccionar y aplicar máscara`, edo edozein hautapen-tresnaren aukeren barrako botoia) ilea, hostoak eta ertz zailak mozteko lekua da: *Ertzak hobetzeko pintzela* (*Pincel de perfeccionar bordes*) ingeradan zehar, *Koloreak deskutsatu* (*Descontaminar colores*) atzeko planoaren haloa kentzeko eta, *Irteera* (*Salida a*) atalean, aukeratu *Geruza-maskara*.
- 0,5 eta 1 pixel arteko *Gauss-en lausotze* batek maskararen gainean itsatsitako elementuen "guraizez moztutako" ertza kentzen du.

### Perspektiba atmosferikoa

Zerbait zenbat eta urrunago egon, orduan eta aire gehiago dago objektuaren eta kameraren artean. Aireak itzalak argitzen ditu, kontrastea eta saturazioa kentzen ditu eta dena zeruaren kolorez tindatzen du. Hau erreproduzitzen ez baduzu, urruneko elementuek pegatinak dirudite.

![Hiru globo distantzia desberdinetan paisaiaren gainean](img/perspectiva-atmosferica.jpg)

*Globo bera hiru aldiz. 1. Hurbil: kolore eta kontraste osoak, zorrotz. 2. Erdian: saturazio eta kontraste pixka bat gutxiago, zeruaren koloretik pixka bat. 3. Urrun: ia zeruaren kolorekoa, txikia, irudian goian eta pixka bat lausotuta.*

Hori lortzeko, urruneko elementu bakoitzaren gainean eta mozketa-maskararekin: beltzak altxatzen dituen *Kurbak* geruza bat, *Tonua/saturazioa* saturazioa jaitsiz eta zeruaren kolorez betetako geruza bat % 20 edo 50eko opakutasunean (edo *Argazki-iragazki* urdinxka bat). Beharrezkoa bada, 1 edo 2 pixeleko *Gauss-en lausotze* bat.

### Argia eta itzalak

- Begiratu nondik datorren argia oinarrizko paisaian (erreparatu dagoeneko dauden itzalei) eta aukeratu alde beretik argiztatutako eraikinen argazkiak. Bat alderantziz badator, irauli horizontalki.
- Lurrean bermatzen den guztiak **kontaktu-itzala** du (txikia eta iluna, justu azpian) eta, eguzkia badago, **itzal proiektatua** argiaren kontrako aldera. Margotu *Biderkatu* moduko geruza batean, fusio-moduen praktikan azaltzen den bezala.
- Argiak (leiho piztuak, farolak, islak) *Pantaila* edo *Kolorea gainesposatu* moduko geruzetan doaz.

## Nola egin

1. **Planifikatu.** Ezer moztu aurretik erabaki zein paisaia erabiliko duzun atzeko plano gisa eta egin zirriborro azkar bat gauza bakoitza non doan. Aukeratu antzeko argia duten argazkiak (eguzkiaren norabide bera, eguneko ordu bera) eta lanaren erdia aurreztuko duzu.
2. **Moztu** elementu bakoitza: *Objektu-hautapena*, *Hautapen azkarra* (*Selección rápida*), *Makila magikoa* edo *Luma* ertz zuzenetarako (eraikinak). Findu *Hautatu eta maskara aplikatu* bidez landaredian eta ilean. Itsatsi elementu bakoitza bere geruzan eta erabili **geruza-maskarak**, inoiz ez borragoma.
3. **Kokatu eta eskalatu** *Transformazio librea* (`Ctrl+T`) erabiliz. Errespetatu perspektiba: urrunekoa txikiagoa da eta irudian gorago dago; hurbilekoa, handiagoa eta beherago. Bihurtu geruzak objektu adimendun eskalatu aurretik.
4. **Berdindu kolorea eta argia** zati bakoitzarena atzeko planoarekin, doikuntza-geruzak mozketa-maskararekin erabiliz: *Kurbak* edo *Mailak* kontrasterako, *Kolore-balantzea* edo *Argazki-iragazkia* nagusitasunerako (atzeko planoa urdinxka bada, denak urdinera jo behar du), *Tonua/saturazioa* urrunekoaren saturazioa jaisteko.
5. **Integratu**:
   - **Itzalak**: margotu geruza berri batean pintzel leun beltzarekin opakutasun baxuan, edo bikoiztu elementuaren geruza, bete beltzez, deformatu eta lausotu.
   - **Islak** uretan edo kristalean: bikoiztu elementua, irauli bertikalki, jaitsi opakutasuna eta aplikatu *Mugimendu-lausotzea* (*Desenfoque de movimiento*).
   - **Sakontasuna**: Gauss-en lausotze arina eta kontraste gutxiago urrun dagoenean; zorroztasuna hurbilekoan.
   - **Ertzak**: pasatu pintzel leun bat maskaratik moztutako ingeradak gogor ikus ez daitezen.
6. **Errematatu** doikuntza-geruza orokor batekin guztiaren gainean (*Kurbak*, edo *Degradatu-mapa* opakutasun baxuan) multzoa bateratzeko. Nahi baduzu, gehitu lainoa, argi-izpiak, alea...

## Entrega

- `.psd` fitxategia geruza guztiak izendatuta eta taldekatuta (atzeko planoa, etxea, giroa, doikuntzak).
- Azken irudia `.jpg` edo `.png` formatuan esportatuta.
- Iruzkin edo dokumentu bat erabili dituzun jatorrizko argazkien estekekin.

## Irudien kredituak

- Irudietako paisaiaren argazkia: Vyacheslav Argenberg, [*Ergaki, Mountain lake Skazka, Rock formations, Sayan Mountains, Russia*](https://commons.wikimedia.org/wiki/File:Ergaki,_Mountain_lake_Skazka,_Rock_formations,_Sayan_Mountains,_Russia.jpg), Wikimedia Commons, CC BY 4.0.
- Perspektiba atmosferikoaren irudiko globoa: `baloon.png`, transformatu praktikakoa.
- Eskemak praktika hauetarako sortu dira ImageMagick-ekin eta erabilera librekoak dira.
