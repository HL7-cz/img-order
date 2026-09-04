{% include variable-definitions.md %}

Následuje seznam použitých code systémů a oborů hodnot, členěný podle zdroje terminologie. Každý prvek logického modelu je uveden právě jednou, v sekci systému, který je pro něj rozhodující. Připouští-li prvek i jiný systém, je uveden ve sloupci Hodnota jako alternativa.

Národní obory hodnot publikuje [HL7 Czech Terminology Implementation Guide](https://hl7.cz/terminology/index.html) a jejich hodnoty jsou dostupné prostřednictvím terminologického serveru **TermX**. U číselníků zdravotních pojišťoven je autoritativním zdrojem balík číselníků poskytovaný v rámci smluvního vztahu, veřejně publikované stránky mají pouze informativní povahu. Existuje-li pro prvek národní obor hodnot, použije se přednostně před mezinárodním.

### NČLPPOL

| Kód položky | Popis položky | Hodnota |
| :--- | :--- | :--- |
| A.3.1.1.1.2 | Váha – kód | [nclppol](https://ncez.mzcr.cz/nclp/ValueSet/nclppol) `20042`, alternativně SNOMED CT `27113001` |
| A.3.1.1.2.2 | Výška – kód | [nclppol](https://ncez.mzcr.cz/nclp/ValueSet/nclppol) `20411`, alternativně SNOMED CT `1153637007` |

### MKN-10 / Orphacode

| Kód položky | Popis položky | Hodnota |
| :--- | :--- | :--- |
| A.2.2.1 | Popis problému / diagnózy / stavu – indikační diagnóza | [condition-cz](https://ncez.mzcr.cz/terminology/ValueSet/condition-cz) — MKN-10, ORPHA a klinické nálezy SNOMED CT |
| A.3.1.2.1 | Popis problému / diagnózy / stavu – další relevantní klinické informace | [condition-cz](https://ncez.mzcr.cz/terminology/ValueSet/condition-cz) |

Samostatně jsou obory hodnot dostupné jako [mkn-10](https://uzis.cz/terminology/ValueSet/mkn-10) a [orphanet-rare-diseases](https://ncez.mzcr.cz/terminology/ValueSet/orphanet-rare-diseases).

### ATC/DLP

| Kód položky | Popis položky | Hodnota |
| :--- | :--- | :--- |
| A.3.1.3.1.2 | Kód medikace | [dlp-atc](https://ncez.mzcr.cz/terminology/ValueSet/dlp-atc), [dlp-lecivepripravky](https://ncez.mzcr.cz/terminology/ValueSet/dlp-lecivepripravky) |

### Snomed-CT

| Kód položky | Popis položky | Hodnota |
| :--- | :--- | :--- |
| A.2.2.2 | Klinická otázka kódem | SNOMED CT |
| A.2.2.4 | Důvod objednávky kódem | SNOMED CT `243796009` |
| A.2.6.6 | Typ vzorku | [lab-specimenType](https://ncez.mzcr.cz/terminology/ValueSet/lab-specimenType) |
| A.2.6.7 | Anatomické umístění vzorku | SNOMED CT, Body structure |
| A.2.6.8 | Morfologie vzorku | SNOMED CT |
| A.2.6.10 | Procedura sběru vzorku | SNOMED CT |
| A.2.6.14.1 | Kontejner – typ | [cz-specimencontainer](https://ncez.mzcr.cz/terminology/ValueSet/cz-specimencontainer) |
| A.3.1.4.1 | Druh implantátu | SNOMED CT `303607000` a potomci |
| A.3.1.4.4 | Implantát – část těla | SNOMED CT, Body structure |
| A.3.1.6 | Omezení pohyblivosti pacienta | [cz-mobility-value](ValueSet-cz-mobility-value.html) — osm kódů pro chůzi, vstávání, stání a pohyb na lůžku. Typ hodnoceného úkonu nese [cz-mobility-type](ValueSet-cz-mobility-type.html) |
| A.3.2.1.1 | Kód požadovaného vyšetření | [cz-imaging-procedure-vs](ValueSet-cz-imaging-procedure-vs.html) — potomci konceptu `363679005` Imaging (procedure) |
| A.3.2.1.4 | Požadované vyšetření – část těla | SNOMED CT, Body structure v rozsahu definovaném standardem DICOM |
| A.3.2.1.5 | Lateralita | [laterality-cz-lab](https://hl7.cz/fhir/core/ValueSet/laterality-cz-lab) z CZ core |

Preferovaným způsobem vyjádření požadovaného vyšetření je SNOMED CT, preference je vyjádřena silou vazby v profilu. U laterality je třeba počítat s tím, že SNOMED CT a FHIR nepracují s konceptem oboustrannosti stejně jako číselník DASTA — má-li být vyšetřena obě strany, vytvoří se zvlášť hodnoty pro levou a pravou.

### DICOM

| Kód položky | Popis položky | Hodnota |
| :--- | :--- | :--- |
| A.3.2.1.3 | Modalita | [cz-modality-vs](ValueSet-cz-modality-vs.html) — DICOM `ModalityCodelist` |

### FHIR

| Kód položky | Popis položky | Hodnota |
| :--- | :--- | :--- |
| A.1.1.6 | Státní občanství | [v3-Country2](https://terminology.hl7.org/ValueSet-v3-Country2.html) |
| A.1.1.7 | Pohlaví | [administrative-gender-cz](https://ncez.mzcr.cz/terminology/ValueSet/administrative-gender-cz) |
| A.1.1.9 | Komunikační jazyk | [all-languages](https://hl7.org/fhir/valueset-all-languages.html) |
| A.1.2.1 | Adresa – země | [v3-Country2](https://terminology.hl7.org/ValueSet-v3-Country2.html) |
| A.1.2.4.1 | Typ kontaktu | [contactrole-cz](https://ncez.mzcr.cz/terminology/ValueSet/contactrole-cz) |
| A.1.4.1 | Způsob úhrady | [cz-coverage-type](https://ncez.mzcr.cz/terminology/ValueSet/cz-coverage-type) — `HIP` zdravotní pojištění, `pay` samoplátce |
| A.1.8.3 | Stav dokumentu | [composition-status](https://hl7.org/fhir/valueset-composition-status.html) — `preliminary`, `final`, `amended`, `entered-in-error`. Prvek se mapuje na `Composition.status`, kde je vazba povinná už v základním zdroji, a profil ji nezužuje. |
| A.1.8.7 | Důvěrnost dokumentu | [v3-Confidentiality](https://terminology.hl7.org/ValueSet-v3-Confidentiality.html) |
| A.1.8.8 | Jazyk dokumentu | [all-languages](https://hl7.org/fhir/valueset-all-languages.html) |
| A.2.1.4 | Urgentnost objednávky | [request-priority](https://hl7.org/fhir/valueset-request-priority.html) — `routine`, `urgent`, `asap`, `stat` |
| A.2.4.1 | Způsob úhrady | [cz-coverage-type](https://ncez.mzcr.cz/terminology/ValueSet/cz-coverage-type) |
| A.2.5.2 | Stav termínu | [appointmentstatus](https://hl7.org/fhir/valueset-appointmentstatus.html) |

Prvek `A.1.8.3 Stav dokumentu` vyjadřuje stav dokumentu v okamžiku vystavení, nikoli stav eŽádanky v systému. Ten je vlastností systému, ne dokumentu, viz [Workflow](workflow-cs.html).

### LOINC

| Kód položky | Popis položky | Hodnota |
| :--- | :--- | :--- |
| A.1.8.2 | Kategorie dokumentu | [document-category](https://ncez.mzcr.cz/terminology/ValueSet/document-category) |
| — | Typ žádanky, `Composition.type` | [referralorder-types](https://ncez.mzcr.cz/terminology/ValueSet/referralorder-types) — pro typ Z kód SNOMED CT `721964003` |

Prvek `Composition.type` nese typ žádanky z národního oboru hodnot Typy žádanek. V logickém modelu pro něj není definován prvek `A.x`, proto je v tabulce uveden bez čísla.

### UCUM

| Kód položky | Popis položky | Hodnota |
| :--- | :--- | :--- |
| A.3.1.1.1.1 | Hodnota váhy – jednotka | [cz-observationUnitsWeight-vs](ValueSet-cz-observationUnitsWeight-vs.html) — `kg`, `g` |
| A.3.1.1.2.1 | Hodnota výšky – jednotka | [cz-observationUnitsHeight-vs](ValueSet-cz-observationUnitsHeight-vs.html) — `m`, `cm` |
