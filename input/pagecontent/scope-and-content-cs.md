### Oblasti řešení

#### Zahrnuté oblasti

Tato příručka pokrývá **eŽádanku typu Z, Žádanku o zobrazovací vyšetření**.

Žádankou o zobrazovací vyšetření se rozumí žádanka na vyšetření provedené jednou z modalit oboru hodnot [cz-modality](ValueSet-cz-modality-vs.html), který vychází z modalit standardu DICOM. Vzhledem ke kardinalitě `1..*` u prvku `A.3.2.1.3 Modalita` lze na jedné eŽádance požadovat dvě modality současně, typicky u hybridních metod jako **PET/CT**, tedy `PT` a `CT`.

Nejčastěji požadované modality uvádí následující tabulka. Úplný a závazný výčet je v oboru hodnot.

##### Tabulka typů modalit

| Kód    | DICOM          | Česky        |
| ----------------- | ---------------------------- | ------------------------- |
| BMD               | Bone Mineral Densitometry    | Denzitometrie             |
| CT                | Computed Tomography          | CT                        |
| DX                | Digital Radiography          | RTG (skiagrafie)          |
| IO                | Intra-oral Radiography       | Intraorální snímek        |
| MR                | Magnetic Resonance           | MR                        |
| MG                | Mammography                  | Mamografie                |
| NM                | Nuclear Medicine             | Metody nukleární medicíny |
| PX                | Panoramic X-Ray              | OPG                       |
| PT                | Positron Emission Tomography | PET                       |
| RF                | Radiofluoroscopy             | Skiaskopie                |
| US                | Ultrasound                   | UZ                        |
| XA                | X-Ray Angiography            | DSA (angiografie)         |

#### Nazahrnuté oblasti

Tato příručka neřeší celkový ekosystém eŽádanek ani způsob jejich přenosu. Nejsou zahrnuty žádanky na zobrazovací vyšetření mimo odbornost radiologie a nukleární medicíny, například keratometrie.

Dále příručka nepokrývá:

- **chování systému eŽádanky** — stavy a jejich přechody, operace rozhraní, oprávnění, notifikace a provozní podmínky popisuje Standard systému eŽádanka,
- **systémovou hlavičku eŽádanky** — tato příručka popisuje pouze FHIR Bundle, viz [Domovská stránka](index-cs.html),
- **klinické scénáře a typové požadavky na obsah** — jsou ve Speciální funkční specifikaci eŽádanky typu Z,
- **vykazování a úhradu vyžádané péče** — mapování na datové rozhraní zdravotních pojišťoven je ve Speciální funkční specifikaci eŽádanky typu Z.
  
Konzultace o vhodné diagnostické metodě, o časování kontroly nebo o proveditelnosti intervenčního výkonu není předmětem této příručky, protože jejím výstupem není zobrazovací vyšetření. Použije se pro ni eŽádanka typu K, viz [HL7 Czech Order Implementation Guide](https://build.fhir.org/ig/HL7-cz/k-order/en/).

### Obsah

#### Informační modely

##### Koncepční pohled

Kostra logického modelu je pro všechny typy eŽádanek jednotná a číslují se v ní stejná čísla prvků. Číslo prvku, například `A.1.7`, označuje tentýž údaj bez ohledu na typ eŽádanky a bez ohledu na to, ve které implementační příručce je definován. Na položky logického modelu se proto odkazuje **číslem a názvem prvku**, nikoli názvem modelu.

| Číslo       | Sekce                                | Účel                                     | Kdo ji definuje           |
| ----------- | ------------------------------------ | ---------------------------------------- | ------------------------- |
| A.1         | Hlavička dokumentu                   | Administrativní údaje.                   | společná pro všechny typy |
| A.2         | Tělo dokumentu                       | Informace o objednávce a její odůvodnění, klinická událost, úhrada, termín návštěvy a informace o vzorku. | společná pro všechny typy |
| A.3         | Podpůrné informace a datové elementy | Klinický obsah specifický pro Žádanku o zobrazovací vyšetření. | typová sekce        |
| A.4         | Vizuální podoba dokumentu            | Lidsky čitelná podoba dokumentu.         | společná pro všechny typy |
| A.5         | Přílohy                              | Přílohy připojené k eŽádance.            | společná pro všechny typy |

###### Součásti obrazové žádanky

<figure>
  {% include imgOrder_CIM-CZ.svg %}
</figure>

###### Hlavička obrazové žádanky

<figure>
  {% include imgOrderHead_CIM-CZ.svg %}
</figure>

###### Tělo obrazové žádanky

<figure>
  {% include imgOrderBody_CIM-CZ.svg %}
</figure>

#### Subjekty

Pacient, zdravotnický pracovník a poskytovatel zdravotních služeb jsou definováni v [HL7 Czech Base and Core Implementation Guide](https://hl7.cz/fhir/core/index-cs.html) a tato příručka je pouze používá. Profil pacienta lokalizuje základní pojmy včetně identifikátorů a terminologie pro použití v českém kontextu, profil zdravotnického pracovníka umožňuje osobě přidělit roli, a profil poskytovatele vymezuje způsob reprezentace organizace.

#### Objekty

Zdravotnický přístroj a zdravotnický prostředek jsou rovněž definovány v [HL7 Czech Base and Core Implementation Guide](https://hl7.cz/fhir/core/index-cs.html). Totéž platí pro komponenty společné více dokumentům, například pro biometrické údaje, které jsou napříč dokumenty definovány shodně.

### Struktura obrazové žádanky

Následující oddíly uvádějí prvky jednotlivých sekcí kostry. Úplný seznam prvků s jejich kardinalitami, datovými typy a obory hodnot je na stránce [Logické modely](logical-models-cs.html), mapování na FHIR profily na stránce [Mapování logického modelu](model-map-cs.html).

#### Hlavička obrazové žádanky

| Číslo | Prvek | Co nese |
|---|---|---|
| A.1.1 | Identifikace pacienta | Resortní identifikátor a identifikační údaje pacienta. |
| A.1.2 | Kontaktní informace pacienta | Kontaktní osoby, na které se lze obrátit kvůli přípravě pacienta na vyšetření nebo v jiných případech. Typ kontaktní osoby rozlišuje emergentní kontakty, zákonné zástupce a ostatní osoby se vztahem k pacientovi. |
| A.1.3 | Zdravotní pojištění | Zdravotní pojišťovna a pojistný vztah pacienta. Pojišťovna nemusí být plátcem vyžádané péče. |
| A.1.4 | Úhrada | Způsob úhrady vyžádané péče. |
| A.1.5 | Objednatel | Žadatel, tedy poskytovatel, pracoviště, odbornost a osoby, které žádanku sepsaly a podepsaly. |
| A.1.6 | Zpracovatel | Poskytovatel vyžádané péče **doporučený při vystavení**. U neadresné eŽádanky nemusí být uveden. Skutečně provádějícího poskytovatele nese systémová hlavička, ne tento prvek. Obecná funkční specifikace dokumentu eŽádanka nazývá tento prvek *Provádějící*. |
| A.1.7 | Příjemce nálezu | Dodateční příjemci výsledku vedle objednatele, tak jak je žadatel určil **při vystavení**. Rozesílání výsledku řídí systémová hlavička, ne tento prvek. |
| A.1.8 | Metadata dokumentu | Údaje o dokumentu jako takovém, například jeho identifikátor, kategorie, datum vytvoření a správce. |
| A.1.9 | Elektronické podpisy | Elektronický podpis nebo pečeť dokumentu podle zákona č. 327/2011 Sb., § 54a, a časové razítko. |

#### Tělo obrazové žádanky

| Číslo | Prvek | Co nese |
|---|---|---|
| A.2.1 | Informace o objednávce | Identifikátor a datum objednávky, požadovaný termín provedení, urgentnost, text objednávky a informace pro pacienta. |
| A.2.2 | Odůvodnění vyšetření | Indikační diagnózu, klinickou otázku a důvod objednávky, kódem i textem. |
| A.2.3 | Klinická událost | Kontext poskytnutí péče, ke kterému se žádanka váže, například návštěvu ambulance, při níž žádanka vznikla. |
| A.2.4 | Úhrada | Údaje ke způsobu platby za požadované vyšetření v těle dokumentu, včetně upřesnění, je-li část vyšetření hrazena jinak než většina. |
| A.2.5 | Termín návštěvy | Požadovaný nebo dohodnutý termín provedení. |
| A.2.6 | Informace o vzorku | Údaje o biologickém vzorku pro případy, kdy je zobrazován vzorek, například bioptický vzorek získaný z prsu nebo peroperačně. |

#### Podpůrné informace a datové elementy

| Číslo | Prvek | Co nese |
|---|---|---|
| A.3.1 | Klinické informace | Údaje sdělované pracovišti zobrazovacích metod, které mají vliv na provedení objednávky nebo na interpretaci výsledku: biometrické údaje, urgentní informace, medikaci, implantáty, omezení pohyblivosti pacienta a další relevantní klinické informace. |
| A.3.2 | Datové elementy objednávky / vyšetření | Vymezení požadovaného vyšetření: jeho kód, název, modalitu, část těla, lateralitu a poznámku. Blok se může opakovat, jedna eŽádanka tedy může nést více požadovaných vyšetření. |
| A.3.3 | Objednávky plánované péče | Odkazy na objednávky plánované péče navazující na tuto žádanku. |
| A.3.4 | Další podpůrné informace | Ostatní podpůrné informace, například termín, ke kterému je výsledek potřebný. |

#### Vizuální podoba dokumentu

Lidsky čitelná podoba dokumentu v požadovaném formátu PDF. Obecná funkční specifikace dokumentu eŽádanka nazývá tuto sekci Prezentovaná forma.

#### Přílohy

Ostatní přílohy, kterými lze doplnit strukturovaný obsah, například ambulantní nebo propouštěcí zprávy, obrazovou dokumentaci nebo data poskytnutá pacientem. Příloha nenahrazuje strukturovaný údaj: údaj, pro který je v logickém modelu definován strukturovaný prvek, musí být uveden tímto prvkem.

Přílohy eŽádanky je třeba odlišit od dokumentů zásilky, kterou se předává výsledek při vyřízení eŽádanky. Ty se řídí pravidly Dočasného úložiště a s tělem eŽádanky nesouvisejí.