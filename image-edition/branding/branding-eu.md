# Branding

Marka bat ez da logo bat bakarrik: logo bat, kolore-paleta bat, tipografia bat eta markak ukitzen duen guztian errepikatzen diren elementu grafiko batzuk dira. Praktika honetan nortasun sinple bat definituko duzu, benetako objektuen gainean aplikatuko duzu (merchandisinga) eta markaren aurkezpen-konposizio bat muntatuko duzu.

## Adibideak

![Marka-konposizioaren adibidea](branding0.png)

Erreparatu adibideari: logoa, paleta (berdea, morea, gorria, horia) eta elementu grafikoak (uhinak, puntuak, arkuak) katiluan, koadernoan eta txartelean errepikatzen dira. Objektu bakoitza desberdina da, baina guztiak marka berekotzat ezagutzen dira.

![Merchandisinga logoarekin](branding1.png)

## Zer egin behar da

### 1. Definitu marka

- Aukeratu edo asmatu marka bat: fikziozko enpresa bat, musika-talde bat, klub bat, proiektu pertsonal bat... Nahi duzuna, baina erabaki hasi aurretik.
- **Logoa**: diseinatu sinple bat (testua + forma geometriko bat nahikoa da) edo erabili dagoeneko duzun bat. Gorde aparteko geruza batean, forma bektorial edo objektu adimendun gisa, kalitatea galdu gabe eskalatu ahal izateko.
- **Kolore-paleta**: 3 eta 5 kolore artean beren kode hamaseitarrekin. Kolore nagusi bat, bigarren mailako bat edo bi eta neutro bat edo bi. Gorde **Laginak** (*Muestras*) panelean beti eskura izateko.
- **Elementu grafikoa** (aukerakoa, baina batu egiten du): patroi bat, lerro batzuk, puntu batzuk, forma bat... logoarekin batera joan eta marka ezagutzen lagunduko duen zerbait, logoa txikia denean ere.

### 2. Aplikatu marka asset-ei

`assets/` karpetan "janzteko" prest dauden objektu zuriak dituzu:

| | | |
|:---:|:---:|:---:|
| ![Publizitate-hesia](assets/billboard.png) | ![Liburua edo koadernoa](assets/book.png) | ![Botila](assets/bottle.jpg) |
| **Publizitate-hesia**<br>`billboard.png` | **Liburua edo koadernoa**<br>`book.png` | **Botila**<br>`bottle.jpg` |
| ![Bisita-txartelak flotatzen](assets/card.png) | ![Bisita-txartelak harriaren gainean](assets/card2.png) | ![Paperezko kafe-edalontziak](assets/cuppaper.png) |
| **Bisita-txartelak (flotatzen)**<br>`card.png` | **Bisita-txartelak (harriaren gainean)**<br>`card2.png` | **Paperezko kafe-edalontziak**<br>`cuppaper.png` |
| ![Katilua](assets/cuptea.png) | ![Boligrafoa](assets/image.png) | ![Giltzatakoa](assets/keyholder.png) |
| **Katilua**<br>`cuptea.png` | **Boligrafoa**<br>`image.png` | **Giltzatakoa**<br>`keyholder.png` |

Aplikatu zure marka horietako **gutxienez 5en** gainean. Bakoitzean logoak **eta** kolore-paletak agertu behar dute: ez da nahikoa logoa objektu zuri baten gainean itsastea.

Beharko dituzun teknikak:

- **Objektu adimendunak**: bihurtu logoa objektu adimendun (`Capa > Objetos inteligentes > Convertir en objeto inteligente`) deformatu aurretik. Horrela gero edita dezakezu eta transformazioek ez dituzte pixelak suntsitzen.
- **Transformatu** (`Ctrl+T` eta eskuineko botoia): *Eskalatu*, *Biratu*, *Distortsionatu*, *Perspektiba* eta batez ere **Deformatu**, logoak katiluaren, botilaren edo edalontziaren kurbari jarrai diezaion.
- **Fusio-moduak**: jarri logoaren geruza *Biderkatu* (*Multiplicar*) moduan objektuaren itzalak errespeta ditzan, edo *Gainjarri* (*Superponer*) edo *Argi leuna* (*Luz suave*) moduan bere ehundura eta distirak har ditzan. Objektu ilunen gainean, *Pantaila* (*Trama*) edo *Normal* opakutasuna pixka bat jaitsita.
- **Objektuaren kolorea aldatu**: hautatu objektua eta sortu *Tonua/saturazioa* doikuntza-geruza bat *Koloreztatu* aktibatuta, edo bete geruza bat kolorearekin eta jarri *Biderkatu* edo *Kolorea* moduan mozketa-maskararekin. Jatorrizko objektuaren islak eta itzalak ikusten jarraitu behar dute.
- **Geruza-maskarak**: logoa objektutik kanpora irten ez dadin eta ertzak leuntzeko.
- **Itzalak eta erliebea**: *Barruko itzal* (*Sombra interior*) pixka bat edo pintzel leunarekin margotutako itzal batek logoak inprimatua dirudien laguntzen dute, eta ez itsatsia.

![Logo bera katiluaren gainean Normal, Biderkatu, Gainjarri eta Biderkatu Deformatuarekin moduetan](img/logo-modos-de-fusion.jpg)

*Logo bera katiluaren gainean. **Normal** moduan pegatina bat dirudi: objektuaren itzalak estaltzen ditu. **Biderkatu** moduan logoaren zuria desagertu egiten da eta katiluaren itzalak kolorearen bidez ikusten dira, inprimatuta balego bezala. **Gainjarri** objektu zuri baten gainean ia ez da ikusten: ehundura edo kolorea duten gainazaletan bakarrik du zentzua. Eskuinean, Biderkatu gehi **Deformatu** logoa alboetarantz estutu dadin katiluaren kurbari jarraituz. Modu guztiak fusio-moduen praktikan daude azalduta, eta transformazioak transformatu praktikan.*

### 3. Sortu konposizioa

Muntatu markaren aurkezpen-irudi bakar bat, *mockup* motakoa, jantzi dituzun objektuetako batzuekin (**gutxienez 3**), `branding0.png` fitxategian bezala:

- Moztu objektuak beren atzeko planoetatik eta kokatu zure paleta erabiltzen duen atzeko plano baten gainean.
- Zaindu itzalak, guztiek gainazal berean bermatuta eta argi berarekin dirudien.
- Gehitu logoa eta, nahi baduzu, markaren izena eta paleta kolore-lagin gisa.

## Entrega

- `.psd` bat jantzitako asset bakoitzeko, geruzak izendatuta.
- Azken konposizioaren `.psd` fitxategia eta bere esportazioa `.png` edo `.jpg` formatuan bereizmen onean.
- Marka-orri bat (beste irudi bat izan daiteke) logoarekin, koloreekin beren kode hamaseitarrekin eta erabilitako tipografiarekin.
