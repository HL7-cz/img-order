{% include variable-definitions.md %}

### Úvod

Tato implementační příručka je založena na [FHIR version R4](https://hl7.org/fhir/R4/) a definuje, jak se v českém národním kontextu reprezentuje **Žádanka o zobrazovací vyšetření**, tedy eŽádanka typu Z. Je zpracována v souladu s evropskými směrnicemi eHN.

Žádankou o zobrazovací vyšetření ošetřující lékař vyžaduje zobrazení vnitřní struktury nebo funkce těla pacienta u poskytovatele, který je oprávněn takové vyšetření provést. Je součástí zdravotnické dokumentace pacienta a autorizuje vyžádanou zdravotní službu, takže tam, kde je péče hrazena z veřejného zdravotního pojištění, je předpokladem její úhrady. Zákonné vymezení eŽádanky a předpisy určující její obsah uvádí kapitola Reference.

Příručka vymezuje obsahové komponenty dokumentu a strukturu, ve které se sestavuje: logický model, jeho mapování na FHIR profily a resources, strukturu FHIR Bundle, obory hodnot a příklady instancí. Cílem je, aby byla žádanka elektronicky vyměnitelná mezi poskytovateli zdravotních služeb, jejich informačními systémy a národní infrastrukturou elektronického zdravotnictví.

#### Dvě části eŽádanky

Z pohledu rozhraní se eŽádanka skládá ze dvou částí.

| Část | Co nese | Kde je popsána |
|---|---|---|
| Systémová hlavička | Typ žádanky, žadatele, pacienta, adresáta, dodatečné příjemce výsledku a odkaz na nadřízenou žádanku. Nenese klinický obsah a v průběhu životního cyklu se může měnit. | Standard systému eŽádanka, schéma v OpenAPI specifikaci |
| FHIR Bundle typu `document` | Veškerý klinický obsah dokumentu. Je sestaven a podepsán při vystavení a po celý životní cyklus eŽádanky se nemění. | **Tato příručka**, Obecná funkční specifikace dokumentu eŽádanka a Speciální funkční specifikace eŽádanky typu Z |

**Tato příručka popisuje pouze FHIR Bundle.** Systémovou hlavičku nepopisuje.

Tato příručka nepopisuje způsob výměny dokumentu.

#### Vztah k ostatní dokumentaci

Dokumentace eŽádanek je členěna do níže uvedené sady.

| Dokument | Co popisuje |
|---|---|
| Standard „Systém eŽádanka“ | Systém eŽádanky jako celek: aktéři, role a oprávnění, architektura, stavový model a životní cyklus, procesy a operace rozhraní, integrace, kybernetická bezpečnost a provozní podmínky. |
| Obecná funkční specifikace dokumentu eŽádanka | Obsah a vlastnosti dokumentu eŽádanka společné všem typům. |
| Speciální funkční specifikace eŽádanky typu Z | Specifika typu Z: klinické scénáře, typové požadavky na obsah, mapovací tabulka na datové rozhraní a typové obory hodnot. |
| Implementační specifikace (tato příručka) | Kompletní logický model, mapování na FHIR resources a profily, struktura FHIR Bundle, obory hodnot a jejich code systémy, příklady instancí. |
| OpenAPI specifikace rozhraní | Datová schémata rozhraní: pole, datové typy, kardinality, příklady a chybové odpovědi. |

### Stručný rozsah

Tato příručka je rozdělena na několik stránek, které jsou uvedeny v horní části každé stránky na liště nabídek.

- [Home - Domovská stránka](index-cs.html): Tato stránka poskytuje úvodní informace, vztah k ostatní dokumentaci, stručný rozsah použití, reference, závislosti, rozdílovou analýzu verzí a prohlášení o duševním vlastnictví.
- Introduction:
  - [Rozsah použití a obsah](scope-and-content-cs.html): Tento segment vymezuje, co příručka pokrývá a co ne, a uvádí kostru logického modelu dokumentu.
  - [Background](background-cs.html): Tento segment obsahuje informace o původu definice žádanky o zobrazovací vyšetření.
- Functional:
  - [Případy užití](use-cases-cs.html): Tento segment vyjmenovává klinické scénáře a odkazuje na instance, které je realizují.
  - [Workflow](workflow-cs.html): Tento segment promítá procesní tok eŽádanky na FHIR artefakty.
  - [Logické modely](logical-models-cs.html): Tento segment obsahuje seznam logických modelů s čísly a názvy prvků.
  - [Terminologické aspekty](terminology-considerations-cs.html): Tento segment obsahuje informace o použitých code systémech a oborech hodnot.
- Implementation:
  - [Mapování logického modelu](model-map-cs.html): Tento segment obsahuje mapování logického modelu na profily.
  - [Příklady](examples-cs.html): Tento segment obsahuje příklady instancí.
  - [Povinnosti](obligations-cs.html): Tento segment obsahuje informace o povinnostech.
  - [Poznámky k implementaci](implementation-notes-cs.html): Tento segment obsahuje informace pro implementaci.
- About:
  - [Autoři](authors-cs.html): Tento segment obsahuje informace o autorech.
  - [Downloads](downloads-cs.html): Tento segment obsahuje informace o možnostech stahování obsahu implementační specifikace.
  - [Závislosti](dependencies-cs.html): Tento segment obsahuje informace o závislostech.
  - [Autorská práva](copyright-cs.html): Tento segment obsahuje informace o autorských právech.
- [Artifacts](artifacts.html): Tato stránka poskytuje seznam FHIR artefaktů definovaných jako součást této implementační příručky.

### Reference

Papírovým vzorem pro Žádanku o zobrazovací vyšetření je Poukaz na vyšetření/ošetření typu Z. Požadavky na obsah vyžádání dalších zdravotních služeb stanoví `příloha č. 1 v části 2 k vyhlášce č. 444/2024 Sb., o zdravotnické dokumentaci`, ve znění k 19. 2. 2025.

* Související specifikace:
  * {{czKOrder}}
    * Implementační specifikace eŽádanek typu K a FT, tedy sesterská příručka téže sady dokumentace. Sdílí s touto příručkou kostru logického modelu a číslování prvků.
  * {{hl7XtEHR}}
    * Tato specifikace inspirovala mnoho návrhových vzorů definovaných v tomto IG.
  * {{czLabOrder}}
    * Tato specifikace má mnoho společných návrhových vzorů definovaných v tomto IG.
  * {{czImg}}
    * Tato specifikace popisuje nález, který je odpovědí na Žádanku o zobrazovací vyšetření.
  * {{czCore}}
    * Kde to bylo možné, byly poděděny specifikace z definic CZ Core.

### Závislosti

{% include dependency-table.xhtml %}

### Rozdílová analýza verzí

{% include cross-version-analysis.xhtml %}

### Prohlášení o duševním vlastnictví

{% include ip-statements.xhtml %}
