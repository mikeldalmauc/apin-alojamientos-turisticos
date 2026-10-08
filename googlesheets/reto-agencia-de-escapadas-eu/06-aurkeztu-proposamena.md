# 06. urratsa · Aurkeztu proposamena bezeroari

**Denbora:** 2 ordu · **Entrega:** nota 10etik

Datuak, kontuak eta grafikoak dituzue. Azkena bezeroak benetan ikusten duena da: **proposamen-fitxa** garbi bat, kontuak eta grafikoak dituen **dokumentu** labur bat, eta gelan bi minutuko **demo** bat, zuen orriak funtzionatzen duela erakusten duzuena.

## 1. Proposamena orria

Liburua irekitzen duenak ikusi behar duen lehen orria da. Arrastatu lehen fitxa izan dadin.

Muntatu fitxa bat `A1:F30` barrutian. Hemen ezer ez da eskuz idazten: dena beste orrietatik dator formulekin, eta horrela taldeak `Aurrekontua` orriko goitibeherakoan iritziz aldatzen badu, fitxa bere kabuz eguneratzen da.

| Zer | Nondik datorren | Adibide-formula |
|---|---|---|
| Izenburua: *Ihesaldi-proposamena honentzat:...* | `Bezeroa!B1` | `="Ihesaldi-proposamena: " & Bezeroa!B1` |
| Aukeratutako ostatua | `Aurrekontua!B2` | `=Aurrekontua!B2` |
| Mota eta kategoria | `Hautagaiak` | `=BUSCARV(B4; Hautagaiak!A:M; 2; FALSO)` eta 3. zutabea |
| Udalerria eta plazak | `Hautagaiak` | 4. eta 5. zutabeak |
| Telefonoa eta weba | `Hautagaiak` | 6. eta 7. zutabeak |
| Maparako esteka | `Hautagaiak` | `=HIPERVINCULO("https://www.google.com/maps?q=" & BUSCARV(B4; Hautagaiak!A:M; 8; FALSO) & "," & BUSCARV(B4; Hautagaiak!A:M; 9; FALSO); "Ikusi mapan")` |
| Gauak eta pertsonak | `Bezeroa` | `=Bezeroa!B3`, `=Bezeroa!B2` |
| Guztira pertsonako eta guztira taldearentzat | `Aurrekontua` | `=Aurrekontua!C9`, `=Aurrekontua!C15` |
| Mugatik sobratzen dena | `Aurrekontua` | `=Aurrekontua!C11` |
| B plana pertsonako | `B plana` | `='B plana'!C9` |

(Adibideetan, `B4` fitxan ostatuaren izena dagoen gelaxka da; egokitu zure fitxara. Orri baten izenak zuriunea duenean, komatxo bakunen artean doa: `'B plana'!C9`.)

Gehitu, zuek idatzita:

- **Bi arrazoi** ostatu hori aukeratzeko eta ez beste laurak (prezioa, eremua, mota, bezeroak eskatzen zuena).
- Oharra: *Gelako jarduera baterako simulatutako prezioak. Open Data Euskadiko benetako datuak, (data) deskargatuak.*

Itsatsi lehen bi grafikoak (hautatu grafikoa `Grafikoak` orrian, `Ctrl+C`, `Ctrl+V` `Proposamena` orrian).

Fitxa bat eman dezan eta ez kalkulu-orri bat:

- `Ikusi > Erakutsi > Sareta-lerroak` (gazt. `Ver > Mostrar > Líneas de cuadrícula`) kentzeko.
- Konbinatu gelaxkak izenbururako (`Formatua > Konbinatu gelaxkak`, gazt. `Formato > Combinar celdas`), jarri 20 tamaina eta atzeko kolore bat.
- Ertzak kontuen taulari eta moneta-formatua zenbatekoei.
- Bi kolore gehienez, eta berdinak grafikoetan (*Pertsonalizatu* ▸ *Seriea* ▸ kolorea).

## 2. Bezeroarentzako dokumentua

Google-ren dokumentu bat **bi orrialdekoa**, taldearen karpetan, `Agentzia_XXTaldea_Proposamena` izenekoa. Atal hauekin, eta izenburu-estiloekin (`Formatua > Paragrafo-estiloak > 1. izenburua`, gazt. `Formato > Estilos de párrafo > Título 1`), ez letra lodi solteekin:

1. **Proposamena.** Bezeroa, aukeratutako ostatua, udalerria, adibidezko datak, maparako esteka eta bi arrazoiak.
2. **Kontuak.** Aurrekontuaren taula pertsonako eta taldearen guztizkoa. Kalkulu-orrian kopiatu `Aurrekontua!A1:C15`; dokumentuan itsastean aukeratu **Estekatu kalkulu-orriarekin** (*Vincular a hoja de cálculo*): aurrekontua aldatzen bada, dokumentuan *Eguneratu* botoi bat agertzen da. Azpian, grafiko zirkularra: `Txertatu > Diagrama > Kalkulu-orrietatik` (gazt. `Insertar > Gráfico > Desde Hojas de cálculo`), zuen liburua eta grafikoa aukeratzen dituzue. Hori ere estekatuta geratzen da.
3. **B plana.** Zer aldatzen den eta zenbat aurrezten den. Hiru errenkadako taula bat nahikoa da.
4. **Nondik datozen datuak.** Iturria, deskarga-data, lizentzia, zenbat ostatu zeuden eta 01. urratseko bi garbiketa-erabaki garrantzitsuenak (atera `Erregistroa` orritik). Eta simulatutako prezioen esaldia.
5. **Hiru formula azalduta.** Liburuko hiru formula (bat kide bakoitzeko) dauden bezala idatzita eta, bakoitzaren azpian, zer egiten duen esaten duen esaldi bat. Adibidez: `=BUSCARV(B2; Hautagaiak!A:M; 13; FALSO)`: aukeratutako ostatua bilatzen du eta pertsonako zenbat balio duen ekartzen du.

Esportatu PDFra `Fitxategia > Deskargatu > PDF` (gazt. `Archivo > Descargar > PDF`) aukerarekin eta ireki grafikoak ikusten direla eta bi orrialde direla egiaztatzeko.

> [!NOTE]
> Estekatutako grafiko bat *Eguneratu* sakatzen baduzue eguneratzen da; PDFa ez. Esportatu ondoren zerbait aldatzen baduzue, esportatu berriro.

## 3. Demoa

Bi minutu talde bakoitzeko, liburua pantailan irekita:

1. `Proposamena` fitxa erakusten duzue eta esaldi batean esaten duzue zer proposatzen diozuen bezeroari eta zergatik (20 segundo).
2. `Aurrekontua` orrira joaten zarete eta goitibeherako batean **aukera bat** aldatzen duzue: adibidez, jarduera. Erakusten duzue guztizkoa, semaforoa, grafiko zirkularra eta fitxa aldatzen direla. Berriro zegoen bezala uzten duzue (60 segundo).
3. Balidatutako gelaxka batean balio ez duen zerbait idazten saiatzen zarete eta orriak baztertzen duela erakusten duzue (20 segundo).
4. Beste talde batek formula bati buruzko galdera bat egiten dizue eta egokitzen zaionak erantzuten du, ez beti pertsona berak (20 segundo).

## 4. Erantzun Erantzunak orrian

| Zk. | Galdera |
|---|---|
| 6.1 | Zein ostatu proposatzen diozue bezeroari eta zergatik hori? Esaldi bat arrazoi bakoitzeko. |
| 6.2 | Liburuko zein formula azal dezake kide bakoitzak irakurri gabe? Izena eta gelaxka. |

## Egiaztatu entregatu aurretik

- [ ] `Proposamena` lehen fitxa da, sareta-lerrorik gabe, datu guztiak formulaz aterata eta bi grafikoekin.
- [ ] Dokumentuak bost atalak ditu, taula eta grafikoa estekatuta, eta bi orrialdetan sartzen da.
- [ ] PDFa liburuan dagoenarekin bat dator.
- [ ] `Datuak`, `Garbiketa`, `Erregistroa`, `Erantzunak`, `Laburpena`, `Hautagaiak`, `Bezeroa`, `Tarifak`, `Aurrekontua`, `B plana` eta `Grafikoak` orriek liburuan jarraitzen dute denek.
- [ ] Izendun bertsioa: `06. urratsa entregatuta`.

## Nola ebaluatzen den

| Irizpidea | Pisua | Bikaina (4) | Ongi (3) | Nahikoa (2) | Gutxiegi (1) |
|---|---|---|---|---|---|
| **Emaitza zuzenak** | % 20 | Kostuak, aurrekontua, B plana eta erantzunak zuzenak; ezerk ez du datuek eta tarifek diotenetik aldentzen. | Erabakia aldatzen ez duen akats txiki bat. | Hainbat akats; erabakia eztabaidagarria da. | Kontuek ez dute bat egiten edo eskuz idatzita daude. |
| **Formulak eta automatizazioa** | % 25 | Dena formulekin kalkulatzen da, BUSCARV eta `$` ikurreko erreferentziak ondo erabilita; datu bat aldatzean, dena aldatzen da. | Eskuzko erreferentziaren bat edo formula hauskor bat. | Hainbat gelaxka eskuz idatzita formula bat sartzen zen lekuan. | Emaitzak balio gisa itsatsita. |
| **Ikuspegiak, balidazioa eta babesa** | % 15 | Izendun iragazki-ikuspegiak, sarrerak baztertzen dituzten goitibeherakoak, kontrol-laukiak, zenbakizko balidazioa eta babestutako formulak. | Lau gauzetako bat falta da. | Goitibeherakoak bakarrik daude. | Ez dago balidaziorik. |
| **Grafikoak** | % 15 | Hiru grafiko mota egokikoak, izenburuarekin, ardatzekin, etiketekin eta iturriarekin; datuekin konektatuta. | Izenbururen bat edo iturria falta da. | Grafiko bat gaizki aukeratuta edo deskonektatuta. | Grafiko irakurgaitzak edo faltan. |
| **Proposamena eta dokumentua** | % 15 | Fitxa argia eta polita, bi orrialdeko dokumentua taula eta grafiko estekatuekin, iturria eta simulatutako prezioak adierazita. | Zuzena baina gutxi zainduta. | Osatu gabe edo maketazio-akatsekin. | Ez dago dokumenturik edo ez dator bat liburuarekin. |
| **Demoa eta azalpena** | % 10 | Kide bakoitzak formula bat azaltzen du eta demoak dena eguneratzen dela erakusten du. | Pertsona batek pisu ia osoa darama. | Demoak zerbaitetan huts egiten du edo batek bakarrik azaltzen du. | Ez da demorik egiten. |

Nota batez besteko haztatua da, 0tik 10era pasatuta. 5ekin gainditzen da. Liburu partekaturik gabe ezin da ebaluatu.

## Entrega

Moodleko zereginean: liburuaren esteka (`06. urratsa entregatuta` bertsioa), dokumentuaren esteka eta **PDFa** erantsita.
