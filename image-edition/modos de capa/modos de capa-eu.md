# Geruzen fusio-moduak

![Fusio-geruzak gehi oinarri-geruzak emaitza ematen dute](img/capa-fusion-base.jpg)

Geruza baten **fusio-moduak** (*modo de fusión*) erabakitzen du nola nahasten diren bere pixelak azpian dituen geruzenekin. *Normal* moduan goiko geruzak azpikoa estaltzen du, besterik gabe. Beste edozein modurekin, Photoshopek eragiketa matematiko bat egiten du pixelez pixel geruzaren kolorearen (**fusio-geruza**) eta azpian dagoenaren kolorearen (**oinarri-geruza**) artean, eta emaitza erakusten du. Ia fotomuntaketa guztiaren atzean dagoen tresna da: ehundurak itsatsi, argiak eta itzalak gehitu, koloreztatu, tintak simulatu, argazkiak nahastu.

Praktika honek bi zati ditu: modu guztien azalpena, geruza-bikote berarekin konparatu ahal izateko, eta zazpi ariketa labur gehi azken proiektu bat. Ariketen materiala `ejercicios/` karpetan dago; azpikarpeta bakoitzean `muestra.jpg` bat dago espero den emaitzarekin.

| Ariketa | Modu nagusia | Zer lortu behar da |
|---|---|---|
| 1 | Biderkatu | Grabatu bat paper zahar baten gainean inprimatu eta koloreztatu tinta galdu gabe |
| 2 | Biderkatu | Moztutako objektu bat mahai baten gainean kokatu eta bere itzala margotu |
| 3 | Pantaila | Su artifizialak, argi lausotuak eta distira bat gehitu gaueko hiri bati |
| 4 | Gainjarri eta Argi leuna | Argazki bati ehundura eta itxura zaharkitua eman |
| 5 | Argi leuna % 50eko grisarekin | Erretratu bat eskuz argitu eta itzaleztatu (*dodge and burn*) |
| 6 | Kolorea, Tonua eta Argitasuna | Zuri-beltzeko argazki bat koloreztatu eta objektu baten kolorea aldatu |
| 7 | Diferentzia | Bi argazki pixel-zehaztasunez lerrokatu |
| 8 | Guztiak | Gutxienez lau modu konbinatzen dituen kartel bat |

## Hasi aurretik

- Fusio-modua **Geruzak paneleko zerrendan** aldatzen da, goian ezkerrean, *Normal* jartzen duen lekuan. `Capa > Estilo de capa > Opciones de fusión` atalean ere agertzen da (klik bikoitza geruzan), **Pintzelaren** aukeren barran (trazu bakoitza fusionatzen du, geruza osoaren ordez) eta **geruza-estiloen** barruan (*Itzal paraleloak* (*Sombra paralela*) Biderkatu erabiltzen du; *Kanpoko distirak* (*Resplandor exterior*), Pantaila).
- **Lasterbideak**: Mugitu tresna (`V`) aktibo dagoela, `Shift` + `+` eta `Shift` + `-` teklek hautatutako geruzaren modu guztiak zeharkatzen dituzte. Probatzeko modurik onena da: utzi geruza jarrita eta joan sakatzen. Erabilienek lasterbide zuzena dute: `Alt+Shift+M` Biderkatu, `Alt+Shift+S` Pantaila, `Alt+Shift+O` Gainjarri, `Alt+Shift+F` Argi leuna, `Alt+Shift+N` Normal. Pintzela hautatuta baduzu, lasterbide hauek pintzelaren modua aldatzen dute, ez geruzarena.
- **Ez da suntsitzailea**: modua aldatzeak ez ditu pixelak ukitzen. Nahi duzunean itzul zaitezke Normal modura.
- **Opakutasunak** (*Opacidad*) eta **Betegarriak** (*Relleno*) geruza zenbat nabaritzen den erregulatzen dute. Betegarriak ez die geruza-estiloei eragiten (itzalak, trazuak) eta zortzi modutan (Kolorea azpiesposatu, Azpiesposizio lineala, Kolorea gainesposatu, Gainesposizio lineala, Argi bizia, Argi lineala, Nahasketa gogorra eta Diferentzia) emaitza desberdin eta leunagoa ematen du Opakutasunak baino. Probatu biak.
- Moduak **geruza osoari** eragiten dio. Eremu batera mugatzeko erabili **geruza-maskara** bat, doikuntza-geruzekin bezala.
- **Taldeak** lehenespenez *Zeharkatu* (*Pasar a través*) moduan daude: taldeko geruza bakoitza azpian dagoen guztiarekin fusionatzen da. Taldea *Normal* moduan jartzen baduzu, geruzak beren artean bakarrik fusionatzen dira eta talde osoa geruza bakar bat bezala portatzen da.
- Jarri geruzei izena daramaten moduarekin eta opakutasunarekin: `ehundura-gainjarri-60`, `itzala-biderkatu`.

## Nola irakurri adibideak

Gida honetako adibide guztiek bi geruza berak erabiltzen dituzte: paisaia-argazki bat oinarri-geruza gisa eta, gainean, proba-geruza bat **beltzetik zurirako degradatu** batekin goiko erdian eta **ostadar** batekin behekoan. Degradatuan modu bakoitzak tonu ilunekin, erdiko grisarekin eta argiekin zer egiten duen ikusten da; ostadarrean, koloreekin zer egiten duen.

![Normal % 100ean, Normal % 50ean eta Disolbatu % 50ean](img/normal-disolver.jpg)

***Normal** % 100ean, goiko geruzak argazkia estaltzen du. Opakutasuna jaistean gardendu egiten da. **Disolbatu** (*Disolver*) moduak ez du nahasten: % 50eko opakutasunarekin geruzaren pixelen erdia uzten du eta beste erdia ausaz kentzen du. Opakutasun baxuarekin edo ertz leunetan bakarrik nabaritzen da, eta ale, spray edo elur efektuetarako balio du.*

## Sei taldeak

Zerrendan moduak lerroz bereizita daude sei taldetan. Talde bakoitzak gauza mota bat egiten du, eta ia guztiek **kolore neutro** bat dute: ezer aldatzen ez duen fusio-geruzaren kolorea, gardena balitz bezala. Kolore neutroa ezagutzea da modu bakoitza ondo erabiltzeko gakoa.

| Taldea | Moduak | Zer egiten dute | Kolore neutroa |
|---|---|---|---|
| Normal | Normal, Disolbatu | Estali | Bat ere ez |
| Ilundu | Ilundu, Biderkatu, Kolorea azpiesposatu, Azpiesposizio lineala, Kolore ilunagoa | Emaitza ez da inoiz oinarria baino argiagoa | **Zuria** |
| Argitu | Argitu, Pantaila, Kolorea gainesposatu, Gainesposizio lineala (Gehitu), Kolore argiagoa | Emaitza ez da inoiz oinarria baino ilunagoa | **Beltza** |
| Kontrastea | Gainjarri, Argi leuna, Argi gogorra, Argi bizia, Argi lineala, Argi fokala, Nahasketa gogorra | Iluna ilundu eta argia argitu | **% 50eko grisa** |
| Alderantzikatzea | Diferentzia, Esklusioa, Kendu, Zatitu | Bi geruzak konparatu | Beltza (Zatitu: zuria) |
| Osagaiak | Tonua, Saturazioa, Kolorea, Argitasuna | Geruzaren kolorearen propietate bakarra hartu | Bat ere ez |

Photoshopen gaztelaniazko izenak: Oscurecer, Multiplicar, Subexponer color, Subexposición lineal, Color más oscuro · Aclarar, Trama, Sobreexponer color, Sobreexposición lineal (Añadir), Color más claro · Superponer, Luz suave, Luz fuerte, Luz intensa, Luz lineal, Luz focal, Mezcla definida · Diferencia, Exclusión, Restar, Dividir · Tono, Saturación, Color, Luminosidad.

![Degradatu bera Biderkatu, Pantaila eta Gainjarri moduetan](img/colores-neutros.jpg)

*Kolore neutroa lanean. Beltzetik zurirako degradatu bat fusio-geruza gisa, **Biderkatu** moduan argazkia osorik ikusten da degradatua zuria den lekuan; **Pantaila** moduan, beltza den lekuan; **Gainjarri** moduan, erdian, % 50eko grisa den lekuan.*

![Bi zirkulu gainjarrita Normal, Biderkatu eta Pantaila moduetan](img/tinta-y-luz.png)

*Ulertzeko beste modu bat: **Biderkatu** paperaren gaineko tintak edo errotuladoreak bezala portatzen da (gainjartzen diren lekuan kolorea ilundu eta nahastu egiten da), eta **Pantaila** horma ilun baten gaineko argi-fokuak bezala (gainjartzen diren lekuan argia batu eta argitu egiten da).*

## Ilundu taldea

![Ilundu taldeko bost moduak](img/grupo-oscurecer.jpg)

Guztiek fusio-geruzaren zuria baztertzen dute eta oinarria ilundu baino ezin dute egin.

- **Ilundu** (*Oscurecer*): bi geruzen kanal bakoitza (gorria, berdea eta urdina) konparatzen du eta baliorik baxuena hartzen du. Kanalez kanal konparatzen duenez, bietako batean ere ez zeuden koloreak sor ditzake.
- **Biderkatu** (*Multiplicar*): bi koloreak biderkatzen ditu (0tik 1erako balioetan). Edozer gauza zuriz (1) berdin geratzen da; edozer gauza beltzez (0) beltza ematen du; grisek eta tarteko koloreek ilundu eta tindatu egiten dute. **Itzalen**, atzeko plano zuriaren gaineko **tinta-marrazkien**, **paper-ehunduren** eta akuarelaz bezala koloreztatzearen modua da. Talde honetan gehien erabiliko duzuna da.
- **Kolorea azpiesposatu** (*Subexponer color*): kontrastea eta saturazioa handituz iluntzen du. Biderkatu baino bortitzagoa: erdiko tonuak azkar doaz beltzera eta koloreak saturatu egiten dira. Oso itzal biziak egiteko edo eremu bat "erretzeko".
- **Azpiesposizio lineala** (*Subexposición lineal*): bi koloreak batu eta 1 kentzen du. Kolorea azpiesposatu baino gehiago iluntzen du baina hainbeste saturatu gabe. Betegarri baxuarekin nahiko naturala geratzen da.
- **Kolore ilunagoa** (*Color más oscuro*): Ilundu bezala, baina kolore osoa konparatzen du (hiru kanalen batura) eta bietako bat hartzen du nahastu gabe. Ez du kolore berririk asmatzen.

## Argitu taldea

![Argitu taldeko bost moduak](img/grupo-aclarar.jpg)

Aurrekoen ispilua dira: fusio-geruzaren beltza baztertzen dute eta argitu baino ezin dute egin.

- **Argitu** (*Aclarar*): kanal bakoitzaren baliorik altuena hartzen du.
- **Pantaila** (*Trama*, ingelesez *Screen*): Biderkatu moduaren alderantzizkoa. Bi diapositiba pantaila berean proiektatzea bezala da: argia batu egiten da, inoiz ez kendu. Beltza desagertu egiten da eta zuriak dena estaltzen du. **Argien** modua da: su artifizialak, distirak, kea, txinpartak, tximistak, atzeko plano beltzaren gainean argazkitutako edozer gauza ezer moztu gabe integratzen da. Esposizio bikoitzaren oinarria ere bada.
- **Kolorea gainesposatu** (*Sobreexponer color*): kontrastea handituz argitzen du. Argiak berehala erretzen dira eta koloreak saturatu egiten dira. Oso distira biziak egiteko: neona, isla metalikoak, ertz argiztatuak.
- **Gainesposizio lineala (Gehitu)** (*Sobreexposición lineal (Añadir)*): bi koloreak zuzenean batzen ditu. Beste edozeinek baino gehiago argitzen du eta gehien erretzen duena da. Argi "fisikoen" modua da: bi foku batzen badituzu, batu egiten dira.
- **Kolore argiagoa** (*Color más claro*): Argitu bezala baina kolore osoarekin.

## Kontrastea taldea

![Kontrastea taldeko zazpi moduak](img/grupo-contraste.jpg)

Aurreko bi taldeak konbinatzen dituzte: fusio-geruza erdiko grisa baino ilunagoa den lekuan ilundu eta argiagoa den lekuan argitu egiten dute. % 50eko grisa desagertu egiten da. Horregatik balio dute **ehunduretarako** (harri- edo paper-ehundura bat, funtsean, orban argiagoak eta ilunagoak dituen gris bat da) eta **dodge and burn** teknikarako, hau da, geruza gris baten gainean argiak eta itzalak margotzeko.

- **Gainjarri** (*Superponer*): Biderkatu itzaletan eta Pantaila argietan, baina **oinarriaren** kolorearen arabera erabakiz. Argazkiaren beltzak eta zuriak errespetatzen ditu eta kontrastea eta saturazioa handitzen ditu. Ehunduretarako eta irudi itzali bati indarra emateko gehien erabiltzen dena da (bikoiztu geruza eta jarri Gainjarri moduan).
- **Argi leuna** (*Luz suave*): gauza bera baina askoz leunago, argi lauso bat bezala. Ez ditu ez zuriak ez beltzak erretzen. Ehundura diskretuetarako eta dodge and burn-erako modurik seguruena da.
- **Argi gogorra** (*Luz fuerte*): Gainjarri bezala baina **fusio**-geruzaren arabera erabakiz. Askoz bortitzagoa: ehundura bere kolore guztiekin ikusten da.
- **Argi bizia** (*Luz intensa*): Kolorea azpiesposatu fusio-geruzaren eremu ilunetan eta Kolorea gainesposatu argietan. Muturreko kontrastea, kolore saturatu-saturatuak. Betegarri baxuarekin kolore-efektu bizietarako balio du.
- **Argi lineala** (*Luz lineal*): Azpiesposizio eta Gainesposizio lineala fusio-geruzaren arabera. Argi bizia bezain indartsua baina hainbeste saturatu gabe. Azalaren ukiturako maiztasun-bereizketaren teknikan erabiltzen da.
- **Argi fokala** (*Luz focal*): koloreak ordezkatzen ditu fusio-geruzaren arabera: iluna den lekuan, ilunena hartzen du; argia den lekuan, argiena. Emaitza bitxiak; efektu berezietarako.
- **Nahasketa gogorra** (*Mezcla definida*): kanal bakoitza 0ra edo 255era eramaten du, beraz emaitzak gehienez zortzi kolore ditu. Betegarria % 10 edo 20an, kontraste indartsu eta garbia ematen du.

## Alderantzikatzea taldea

![Alderantzikatzea taldeko lau moduak](img/grupo-inversion.jpg)

Bi geruzak konparatzen dituzte. Fotomuntaketan gutxien erabiltzen direnak dira, baina oso trikimailu erabilgarri pare bat dute.

- **Diferentzia** (*Diferencia*): kolore ilunena argienari kentzen dio. Bi geruzak berdinak badira emaitza **beltza** da; fusio-geruzako zuriak oinarria alderantzikatzen du. Trikimailua: ia berdinak diren bi argazki **lerrokatzeko**, jarri goikoa Diferentzia moduan eta mugitu dena beltz geratu arte.
- **Esklusioa** (*Exclusión*): Diferentzia bezala baina leunagoa, grisekin erdiko tonuetan.
- **Kendu** (*Restar*): fusio-geruza oinarriari kentzen dio. Biderkatu ez bezala iluntzen du.
- **Zatitu** (*Dividir*): oinarria fusio-geruzaz zatitzen du. Trikimailua: bikoiztu argazki bat edo eskaneatutako dokumentu bat, lausotu asko kopia (50 pixel edo gehiago) eta jarri Zatitu moduan: argiztapen irregularra ezabatzen da eta atzeko planoa uniforme geratzen da.

## Osagaiak taldea

![Osagaiak taldeko lau moduak](img/grupo-componentes.jpg)

Kolorearen zenbakiekin eragiketak egin beharrean, fusio-geruzatik HSL ereduaren propietate bakar bat hartzen dute (tonua, saturazioa edo argitasuna) eta gainerakoa oinarritik. Doikuntzen praktikako Tonua/saturazioa doikuntza-geruzaren hiru ardatz berak dira.

- **Tonua** (*Tono*): fusio-geruzaren tonua oinarriaren saturazio eta argitasunarekin. Begiratu degradatu grisari: gris batek tonurik ez duenez, aplikatzean oinarria **desaturatu** egiten da. Objektu baten kolorea aldatzeko balio du bere itzaleztadura eta intentsitatea mantenduz.
- **Saturazioa** (*Saturación*): fusio-geruzaren saturazioa oinarriaren tonu eta argitasunarekin. Geruza gris batek modu honetan argazkia zuri-beltzean uzten du; oso geruza saturatu batek piztu egiten du. "Objektu bakarra koloretan" efekturako.
- **Kolorea** (*Color*): fusio-geruzaren tonua eta saturazioa oinarriaren argitasunarekin. **Zuri-beltzeko argazkiak koloreztatzeko**, biraketetarako eta arroparen, ilearen edo auto baten kolorea aldatzeko modua da: kolorea aldatzen da, argiak eta itzalak geratzen dira.
- **Argitasuna** (*Luminosidad*): fusio-geruzaren argitasuna oinarriaren kolorearekin. Ia inoiz ez da erabiltzen pixel-geruza batekin, baina bai **doikuntza-geruzekin**: Kurbak edo Mailak geruza bat Argitasuna moduan kontrastea aldatzen du koloreak eta saturazioa aldatu gabe. Gauza bera Argitasuna moduko kopia bati aplikatutako enfoke-iragazki batekin: enfokatzen du kolore-halorik sortu gabe.

## Matematika, jakin-mina baduzu

Photoshopek kanal bakoitzarekin (gorria, berdea eta urdina) bereizita lan egiten du, 0tik (beltza) 1erako (zuria) balioekin. Oinarriaren koloreari **A** eta fusio-geruzarenari **B** deitzen badiezu:

| Modua | Formula | Nondik dator kolore neutroa |
|---|---|---|
| Biderkatu | A × B | Edozer gauza 1ez (zuria) berdin geratzen da |
| Pantaila | 1 − (1 − A) × (1 − B) | B = 0 bada (beltza), A geratzen da |
| Gainjarri | A < 0,5 bada: 2 × A × B. Bestela: 1 − 2 × (1 − A) × (1 − B) | B = 0,5 (grisa) denean bi adarrek A itzultzen dute |
| Argi gogorra | Gainjarri bezala, baina baldintzak B begiratzen du | % 50eko grisa |
| Kolorea azpiesposatu | 1 − (1 − A) / B | Zuria |
| Kolorea gainesposatu | A / (1 − B) | Beltza |
| Azpiesposizio lineala | A + B − 1 | Zuria |
| Gainesposizio lineala | A + B | Beltza |
| Diferentzia | \|A − B\| | Beltza |
| Esklusioa | A + B − 2 × A × B | Beltza |
| Kendu | A − B | Beltza |
| Zatitu | A / B | Zuria |

0tik 1erako barrutitik irteten dena moztu egiten da: horregatik Gainesposizio linealak "erre" egiten du eta Azpiesposizio linealak "zikindu".

## Txuleta

![Modu guztiak bi geruza berekin](img/chuleta-modos.jpg)

*27 moduak geruza-bikote berarekin. Gorde eta konparatu zalantza duzunean.*

## Ariketak

Landu ariketa bakoitza bere `.psd` fitxategian. Modu bat ontzat eman aurretik, zeharkatu gainerakoak `Shift` + `+` bidez, hobeto funtzionatzen duen besterik ez dagoela ikusteko.

### 1. Tinta paperaren gainean (Biderkatu)

![Marrazkia, papera eta emaitza](ejercicios/01-tinta-sobre-papel/muestra.jpg)

Materiala `ejercicios/01-tinta-sobre-papel/` karpetan: `dibujo-rinoceronte.jpg` (Dürer-en errinozeroaren grabatua, 1515ekoa, atzeko plano zuriaren gainean) eta `papel.jpg`.

Lortu grabatuak paper zaharrean inprimatuta dirudiela eta koloreztatu errinozeroa akuarela-ukitu bat balitz bezala, marrazkiaren **atzeko plano zuria hautatu eta ezabatu gabe**.

1. Ireki `papel.jpg` eta kokatu gainean marrazkia (`Archivo > Colocar incrustado`). Doitu tamaina.
2. Jarri marrazkiaren geruza **Biderkatu** moduan. Zuria desagertu egiten da eta tinta geratzen da. Konparatu Normal eta Ilundu moduekin.
3. Atzeko planoa guztiz desagertzen ez bada (zuri purua ez delako), gehitu **Mailak** doikuntza-geruza bat mozketa-maskararekin marrazkiaren gainean eta arrastatu triangelu zuria ezkerrerantz garbitu arte.
4. Sortu geruza huts bat gainean, **Biderkatu** moduan, eta margotu pintzel leun batekin eta kolore argiekin (okrea, berdea, urdin grisaxka) gorputzaren gainean. Koloreak tindatu egiten du lerroak estali gabe, eta bi aldiz pasatzen duzun lekuan ilundu egiten da, errotuladore batek bezala. Bolumena nahi baduzu, beste geruza bat **Argi leuna** moduan eta margotu zuriz eta beltzez.
5. Tinta paperak xurgatua dirudien, jaitsi marrazkiaren geruzaren opakutasuna % 85 edo 90era eta aplikatu 0,3 pixeleko *Gauss-en lausotzea*.

### 2. Itzala (Biderkatu)

![Objektua, mahaia eta emaitza](ejercicios/02-sombra/muestra.jpg)

Materiala `ejercicios/02-sombra/` karpetan: `mando.png` eta `galletas.png` (atzeko plano gardeneko objektuak) eta `mesa.jpg`.

Kokatu agintea (edo gailetak) mahaiaren gainean eta margotu bermatutako edozein objektuk dituen bi itzalak: **kontaktu-itzala**, txikia eta iluna justu azpian, eta **itzal proiektatua**, luzeagoa, leunagoa eta argiagoa.

1. Kokatu `mando.png` `mesa.jpg` gainean eta eskalatu `Ctrl+T` bidez. Erabaki nondik datorren argia: itzala kontrako aldera joango da.
2. **Itzal proiektatua siluetatik abiatuta**: `Ctrl+klik` agintearen geruzaren miniaturan bere silueta hautatzeko. Sortu geruza berri bat agintearen azpian eta bete beltzez (`Alt+Retroceso` beltza aurreko kolore gisa duzula). Desautatu. `Ctrl+T` eta eskuineko botoiarekin, *Distortsionatu* edo *Okertu* itzala joango litzatekeen alderantz etzateko. `Filtro > Desenfocar > Desenfoque gaussiano` 10 eta 20 pixel artean. **Biderkatu** modua, opakutasuna % 50 eta 70 artean.
3. **Kontaktu-itzala**: bikoiztu itzal-geruza hori deformatu aurretik (edo hautatu berriro silueta eta bete beste geruza bat), lausotu 3 edo 5 pixel bakarrik, desplazatu pixel batzuk itzalerantz eta utzi % 70 edo 80an.
4. Benetako itzalak ez dira beltzak: margotu itzalak mahaitik bertatik hartutako kolore ilun batekin (gris urdinxka edo marroi bat) edo aplikatu *Tonua/saturazioa* *Koloreztatu* aktibatuta. Biderkatu moduak hobeto integratzen ditu.
5. Eskuzko alternatiba: geruza hutsa Biderkatu moduan eta pintzel leun beltza opakutasuna % 15 edo 20an, pasaldiak pilatuz itzala trinkoagoa den lekuan.
6. Egiaztatu koherentzia: zenbat eta baxuago egon argia, orduan eta luzeagoa itzal proiektatua; kontaktu-itzala beti da ilunena.

### 3. Argiak (Pantaila)

![Hiria, su artifizialak, bokeh-a eta emaitza](ejercicios/03-luces/muestra.jpg)

Materiala `ejercicios/03-luces/` karpetan: `ciudad.jpg`, `fuegos-1.jpg`, `fuegos-2.jpg`, `bokeh.jpg` eta `destello.jpg`. Argi-elementu guztiak atzeko plano beltzaren gainean daude.

Gehitu su artifizialak zeruan, argi lausotuak aurrean eta distira bat zubiaren fokuetako baten gainean. **Ezer moztu gabe**: dena Pantaila moduan, beltza desagerrarazten duena.

1. Kokatu `fuegos-1.jpg` hiriaren gainean eta jarri **Pantaila** moduan. Eskalatu eta mugitu zerura. Su artifizialen atzeko plano beltza beltz purua ez bada, laukizuzen gris bat ikusiko da: konpondu **Mailak** doikuntza-geruza batekin mozketa-maskararekin (arrastatu triangelu beltza eskuinerantz) edo `Opciones de fusión > Fusionar si` bidez (arrastatu *Esta capa* ataleko erregulatzaile beltza eskuinerantz).
2. Gehitu `fuegos-2.jpg` txikiago eta horizontalki iraulita. Jarri maskara bat eta lausotu beheko aldea txinpartak eraikinen gainean ikus ez daitezen.
3. `bokeh.jpg` **Pantaila** moduan % 40 edo 60ko opakutasunarekin, Gauss-en lausotze pixka batekin leuntzeko.
4. `destello.jpg` zubiaren farola baten gainean: Pantaila, eskalatu eta biratu `Ctrl+T` bidez. Distiraren zentroak argiarekin bat etorri behar du.
5. Konparatu Pantaila Argitu, Kolorea gainesposatu eta Gainesposizio lineala moduekin su artifizialetan: Pantaila da naturalena; Gainesposizio lineala argitsuena eta gehien erretzen duena.
6. Gehigarria: geruza hutsa **Kolorea gainesposatu** moduan eta pintzel leun laranja oso opakutasun baxuan farolen gainean: distira bizi bat ateratzen zaie inguruan.

### 4. Ehundura (Gainjarri eta Argi leuna)

![Argazkia, ehundurak eta emaitza](ejercicios/04-textura/muestra.jpg)

Materiala `ejercicios/04-textura/` karpetan: `foto.jpg`, `textura-hormigon.jpg`, `textura-papel.jpg` eta `textura-grunge.jpg`.

Bihurtu argazkia inprimaketa zahar bat, paper-ehundurarekin eta orbanekin.

1. Kokatu `textura-hormigon.jpg` argazkiaren gainean eta jarri **Gainjarri** moduan. Ehunduraren erdiko grisak desagertu egiten dira; puntu ilunek ilundu eta argiek argitu egiten dute. Konparatu **Argi leuna** (diskretuagoa) eta **Argi gogorra** (bortitzagoa) moduekin.
2. Erregulatu opakutasuna % 40 eta 70 artean.
3. Erliebea bakarrik nahi baduzu eta ez ehunduraren kolorea, desaturatu (`Ctrl+Shift+U`). Ehundurak "alderantziz" badirudi (pitzadurek ilundu beharrean argitu egiten dute), alderantzikatu (`Ctrl+I`).
4. `textura-papel.jpg` **Biderkatu** moduan % 50 edo 60an paper horixka batek bezala tindatu eta iluntzen du. Argi leuna moduan orbanak bakarrik uzten ditu.
5. `textura-grunge.jpg` **Argi leuna** moduan. Lakua edo zerua gehiegi estaltzen badu, gehitu maskara bat eta margotu beltzez eremu horiek.
6. **Bineta**: geruza berria degradatu erradial batekin, gardenetik (zentroa) beltzera (ertzak), **Biderkatu** moduan % 30 edo 40an. Zuriz eta **Pantaila** moduan, bineta argizkoa da.

### 5. Argiak eta itzalak eskuz (Argi leuna % 50eko grisarekin)

![Erretratua, geruza grisa eta emaitza](ejercicios/05-luces-y-sombras-a-mano/muestra.jpg)

Materiala `ejercicios/05-luces-y-sombras-a-mano/` karpetan: `retrato.jpg`. `ejemplo-capa-gris.jpg` fitxategiak dagoeneko margotutako geruza gris bat erakusten du, nola geratzen den ikusi nahi baduzu.

*Dodge and burn* teknika klasikoa da: geruza gris bat Argi leuna moduan, zeinaren gainean argia zuriz eta itzala beltzez margotzen diren. % 50eko grisa Argi leuna moduaren kolore neutroa denez, geruza ez da ikusten margotu arte.

1. `Capa > Nueva > Capa` (`Ctrl+Shift+N`). Elkarrizketa-koadroan aukeratu **Argi leuna** (*Luz suave*) modua eta markatu **Bete Argi leuna moduaren kolore neutroarekin (% 50eko grisa)** (*Rellenar con color neutro para Luz suave (gris 50 %)*). Irudia ez da aldatzen.
2. Pintzel biribil leuna, opakutasuna % 5 eta 10 artean, fluxu baxua. Margotu **zuriz** argia ematen duen lekuan: kopeta, masailezurrak, sudur-zubia, kokotsa, ilearen distirak. Margotu **beltzez** itzala doan lekuan: sudurraren alboak, masailezurren azpian, lepoa, begi-zuloak eta irudiaren ertzak.
3. `Alt+klik` geruza grisaren begian bakarrik ikusteko eta margotu duzuna egiaztatzeko, laginean bezala. Pasatzen bazara, margotu % 50eko grisez ezabatzeko.
4. Konparatu **Argi leuna** eta **Gainjarri**: bigarrenak kontraste handiagoa ematen du pintzelkada berekin.
5. Argitu buruaren atzeko planoa ere pintzel handi batekin bereizteko, eta ilundu izkinak bineta gisa.
6. Gehigarria: zuritik gardenerako degradatu bat Argi leuna moduko geruza batean foku bat simulatzen du; beltzetik gardenerako batek, itzal bat.

### 6. Kolorea (Kolorea, Tonua eta Argitasuna)

![Zuri-beltzeko paisaia, erreferentzia, erretratua eta emaitza](ejercicios/06-color/muestra.jpg)

Materiala `ejercicios/06-color/` karpetan: `paisaje-bn.jpg`, `paisaje-color-referencia.jpg` eta `retrato.jpg`.

**A. Koloreztatu.** Itzuli kolorea zuri-beltzeko paisaiari erreferentzia erabiliz.

1. Geruza huts bat **Kolorea** moduan elementu bakoitzeko: zerua, harkaitzak, belarra, lakua. Hartu koloreak erreferentziatik tanta-kontagailuarekin eta margotu pintzel leun eta handi batekin. Argazkiaren argitasuna mantentzen da; kolorea bakarrik aldatzen da.
2. Erregulatu geruza bakoitzaren opakutasuna. Probatu gauza bera **Tonua** moduan margotzen: ez da ezer gertatzen, gris batek ez duelako mantentzeko saturaziorik. **Gainjarri** moduan tindatu eta gainera kontrastatu egiten du; **Biderkatu** moduan tindatu eta ilundu.

**B. Objektu baten kolorea aldatu.** Pasatu erretratuko aterki urdina gorrira (edo nahi duzun kolorera).

1. Hautatu aterkia (*Objektu-hautapena* edo *Makila magikoa*) pintura kanpora irten ez dadin.
2. Geruza hutsa **Tonua** moduan eta margotu gorriz hautapenaren gainean. Tonua aldatzen da baina aterkiaren saturazioa eta argiak mantentzen dira. Konparatu **Kolorea** moduarekin (saturazioa ere aldatzen du) eta *Tonua/saturazioa* doikuntza-geruza batekin, doikuntzen praktikan ikasi zenuena.

**C. Kontrastea kolorea aldatu gabe.** Koloretako erreferentziaren gainean, sortu **Kurbak** doikuntza-geruza bat S nabarmen batekin eta begiratu nola saturatzen diren koloreak. Aldatu doikuntza-geruza **Argitasuna** modura: kontrastea geratzen da, saturazioa bere lekura itzultzen da.

### 7. Diferentzia (lerrokatu)

![Bi argazkiak, diferentzia lerrokatu gabe eta lerrokatuta](ejercicios/07-diferencia/muestra.jpg)

Materiala `ejercicios/07-diferencia/` karpetan: `foto-a.png` eta `foto-b.png`. Argazki bera dira, baina `foto-b` pixel batzuk desplazatuta dago.

1. Ireki `foto-a.png` eta kokatu `foto-b.png` gainean. Jarri **Diferentzia** moduan: biak bat datozen lekuan emaitza beltza da; ez datozen lekuan, ertz bikoitzak ikusten dira.
2. Mugitu goiko geruza teklatuko geziekin (`Shift` + gezia 10na pixel mugitzen du) irudia guztiz beltz bihurtu arte, bi ertzetako zerrenda bat izan ezik.
3. Jarri berriro Normal moduan. Eskaneatuak, HDR edo panoramiketarako argazkiak lerrokatzeko balio du, eta diseinu baten bi bertsio konparatzeko eta zer aldatu den ikusteko.
4. Gehigarria: **Mailak** doikuntza-geruza bat gainean, triangelu zuria oso ezkerrean, begi hutsez ikusten ez diren diferentzia txikiak handitzen ditu.

### 8. Proiektua: kartela

Egin kartel bat (A4 150 ppp-tan nahikoa da) zure argazki batetik edo banku libre batekotik abiatuta, **gutxienez lau fusio-modu** desberdin erabiliz, adibidez:

- Ehundura bat Gainjarri edo Argi leuna moduan.
- Argiak (distirak, bokeh-a, kea, partikulak) Pantaila edo Kolorea gainesposatu moduan.
- Itzalak Biderkatu moduan.
- Kolore-biraketa bat: kolore batez betetako geruza bat Kolorea edo Argi leuna moduan opakutasun baxuan, edo Degradatu-mapa bat Argi leuna moduan.
- Dodge and burn % 50eko grisarekin.
- Testua barruan ehundura batekin (mozketa-maskara) eta atzeko planoarekin integratzen duen fusio-modu batekin.

Geruzak beren moduarekin izendatuta eta taldekatuta joan behar dute.

## Entrega

- 1etik 7rako ariketen eta kartelaren `.psd` fitxategiak, geruzak beren fusio-moduan eta izendatuta (`suartifizialak-pantaila-80`, `itzala-biderkatu-60`).
- Emaitza bakoitzaren esportazioa `.jpg` edo `.png` formatuan.

## Irudien kredituak

Argazki guztiak [Wikimedia Commons](https://commons.wikimedia.org)-etik datoz:

- Paisaia: Vyacheslav Argenberg, [*Ergaki, Mountain lake Skazka, Rock formations, Sayan Mountains, Russia*](https://commons.wikimedia.org/wiki/File:Ergaki,_Mountain_lake_Skazka,_Rock_formations,_Sayan_Mountains,_Russia.jpg), CC BY 4.0.
- Gaueko hiria: Wilfredor, [*Széchenyi Chain Bridge in Budapest at night*](https://commons.wikimedia.org/wiki/File:Sz%C3%A9chenyi_Chain_Bridge_in_Budapest_at_night.jpg), CC0.
- Su artifizialak: Matthew Bellemare, [*Several Fireworks*](https://commons.wikimedia.org/wiki/File:Several_Fireworks_%28163993629%29.jpeg) eta [*Purple Fireworks*](https://commons.wikimedia.org/wiki/File:Purple_Fireworks_%28163993599%29.jpeg), CC BY-SA 3.0.
- Paper zaharra: [*Old paper2*](https://commons.wikimedia.org/wiki/File:Old_paper2.jpg), jabari publikoa.
- Hormigoia: Sisters.seamless, [*Grey speckled moderately cracked grubby grungy seamless concrete building wall texture*](https://commons.wikimedia.org/wiki/File:Grey_speckled_moderately_cracked_grubby_grungy_seamless_concrete_building_wall_texture.jpg), CC0.
- Erretratua: Dmitry Makeev, [*Russia, Moscow Oblast. Young woman with umbrella, studio portrait*](https://commons.wikimedia.org/wiki/File:Russia,_Moscow_Oblast._Young_woman_with_umbrella,_studio_portrait.jpg), CC BY-SA 4.0.
- Errinozeroa: Albrecht Dürer, [*The Rhinoceros*](https://commons.wikimedia.org/wiki/File:The_Rhinoceros_%28NGA_1964.8.697%29_enhanced.png), 1515, National Gallery of Art, jabari publikoa.
- Agintea: Evan-Amos, [*PlayStation2-DualShock2*](https://commons.wikimedia.org/wiki/File:PlayStation2-DualShock2.png), jabari publikoa. Gailetak: Bruce The Deus, [*Oreo biscuits (transparent background)*](https://commons.wikimedia.org/wiki/File:Oreo_biscuits_%28transparent_background%29.png), jabari publikoa.
- Mahaia: W.carter, [*Weatherworn top of wooden table*](https://commons.wikimedia.org/wiki/File:Weatherworn_top_of_wooden_table.jpg), CC0.

Bokeh-a, distira, grunge ehundura eta moduen eskema guztiak praktika honetarako sortu dira ImageMagick-ekin eta erabilera librekoak dira. CC BY-SA lizentziako argazkiak dituzten lagin-emaitzak (su artifizialak eta erretratua) lizentzia berarekin partekatzen dira.
