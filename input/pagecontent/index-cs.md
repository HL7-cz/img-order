{% include variable-definitions.md %}

### Úvod

Tato implementační příručka je založena na [FHIR version R4](https://hl7.org/fhir/R4/). Specifikuje sadu pravidel, které jsou použity k definování toho, jak reprezentovat Obrazovou žádanku v českém národním kontextu, v souladu s evropskými směrnicemi eHN.

Jeho hlavním cílem je definovat obsahové komponenty a preferovanou strukturu, která má být použita pro konstrukci Obrazové žádanky. Účelem tohoto standardu je definovat formu Obrazové žádanky jako lékařského záznamu pacienta za účelem elektronické výměny zdravotních informací mezi jednotlivci, poskytovateli zdravotní péče a infrastrukturou v České republice.

Tato příručka nepopisuje způsob výměny této zprávy.

### Stručný rozsah

Tato příručka je rozdělena na několik stránek, které jsou uvedeny v horní části každé stránky na liště nabídek.

- [Home - Domovská stránka](index-cs.html): Tato stránka poskytuje úvodní informace, stručný rozsah použití, reference, závislosti, rozdílovou analýzu verzí a prohlášení o duševním vlastnictví.
- Introduction:
  - [Rozsah použití a obsah](scope-and-content-cs.html): Tento segment obsahuje úvodní obecné informace o obrazové žádance.
  - [Background](background-cs.html): Tento segment obsahuje obecné informace o původu definice obrazové žádanky. 
- Functional:
  - [Případy užití](use-cases-cs.html): Tento segment obsahuje informace o případech použití. 
  - [Workflow](workflow-cs.html): Tento segment obsahuje informace o pracovním postupu. 
  - [Logické modely](logical-models-cs.html): Tento segment obsahuje informace o logických modelech. 
  - [Terminologické aspekty](terminology-considerations-cs.html): Tento segment obsahuje informace o terminologii. 
- Implementation:
  - [Mapování logického modelu](model-map-cs.html): Tento segment obsahuje informace o mapování logického modelu na profily obrazové žádanky.
  - [Příklady](examples-cs.html): Tento segment obsahuje informace o příkladech.
  - [Povinnosti](obligations-cs.html): Tento segment obsahuje informace o povinnostech.
- About:
  - [Autoři](authors-cs.html): Tento segment obsahuje informace o autorech.
  - [Downloads](downloads-cs.html): Tento segment obsahuje informace o možnostech stahování obsahu implementační specifikace.
  - [Závislosti](dependencies-cs.html): Tento segment obsahuje informace o závislostech.
  - [Autorská práva](copyright-cs.html): Tento segment obsahuje informace o autorských právech.
- [Artifacts](artifacts.html): Tato stránka poskytuje seznam FHIR artefaktů definovaných jako součást této implementační příručky.

### Reference

Papírovým vzorem pro elektronickou žádanku je papírová žádanka Poukazu na vyšetření/ošetření typu Z. Specifikace obsahu papírové žádanky uvádí `příloha č. 1 v části 2 k vyhlášce č. 444/2024 Sb., o zdravotnické dokumentaci, k 19.2.2025`.

* Související specifikace:
  * {{hl7XtEHR}}
    * Tato specifikace inspirovala mnoho návrhových vzorů definovaných v tomto IG.
  * {{czLabOrder}}
    * Tato specifikace má mnoho společných návrhových vzorů definovaných v tomto IG.
  * {{czImg}}
    * Tato specifikace má mnoho společných návrhových vzorů definovaných v tomto IG.
  * {{czCore}}
    * Kde to bylo možné, byly poděděny specifikace z definicí CZ core.

### Závisloti

{% include dependency-table.xhtml %}

### Rozdílová analýza verzí

{% include cross-version-analysis.xhtml %}

### Prohlášení o duševním vlastnictví

{% include ip-statements.xhtml %}

