### Sekce a obsah

Dokument je rozdělen do sady povinných sekcí. Sekce jsou povinné, nikoli volitelné, aby bylo jasné, proč nejsou k dispozici žádná data, což je vyjádřeno v `composition.section.emptyReason`.

### Struktura dokumentu

Zobrazovací zpráva obsahuje následující sekce v tomto pořadí:

#### Hlavička obrazové žádanky

Obecné informace o zprávě. Většina informačních prvků v této části zprávy se překrývá s jinými klinickými zprávami. Záhlaví dokumentu obsahuje informace o pacientovi, zdrojové organizaci, autorovi, ověřovateli a správci zprávy.

**Klinická událost (encounter)**

Tato volitelná sekce může umožnit indikující lékař propojení žádanky s jednou konkrétní klinickou událostí, tj. například návštěvu ambulance, při které žádanka vznikla. Tato informace sama o sobě není pro vyšetření důležitá, nicméně lze touto cestou propojit žádanku s ambulantní či jinou zprávu, která může obsahovat relevantní informace, které klinik na žádanku neuvedl.

#### Tělo obrazové žádanky

**Informace o objednávce**

Tato požadovaná sekce zahrnuje povinný identifikátor žádanky ([A.2.1.1](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.identifier)), datum a čas jejího vytvoření ([A.2.1.2](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.dateTime)) – pokud je založena sekce informací, musí tyto informace obsahovat. Mezi volitelné položky patří urgentnost objednávky (z pohledu indikujícího lékaře) vyjádřená mezinárodním kódem ze sytému HL7 ([Request Priority](https://hl7.org/fhir/valueset-request-priority.html)) ([A.2.1.4](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.urgency)), který může nabývat hodnot routine (běžná priorita), urgent (spěchá), asap (co možná nejdříve) a stat (status iminens, STATIM). Další volitelnou položkou je datum a čas požadovaného vyšetření  ([A.2.1.3](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.requestedExecdateTime)), zde se nejedná o termín skutečného objednání, otevírá se zde možnost např. zaslat žádanku s prosbou o objednání na den, kdy má pacient ambulantní klinickou kontrolu.

Další požadavky / podrobné specifikace zkoušky ([A.2.1.5](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.orderText)) je další volitelné pole, které může obsahovat další informace pro objednávku. To může zahrnovat například požadavek odesílajícího lékaře na použití specifického dohodnutého protokolu nebo provedení vyšetření na konkrétním přístroji MRI.

Poslední volitelnou položkou jsou informace pro pacienta, jako jsou požadavky na lačno, vysazení léků, rady ohledně klaustrofobie atd.

**Odůvodnění vyšetření (klinická otázka)**

Tato požadovaná sekce zahrnuje indikační diagnózu ([A.2.2.1](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderReason.problem)), která je vyžadována zdravotními pojišťovnami k proplacení služby. Další položky zahrnují klinickou otázku (věta tázací, měla by končit otazníkem a mělo by možné na ni na základě obrazového vyšetření odpovědět) případně zadanou i kódem SNOMED-CT a důvod objednávky (v podstatě odpovídá stručné epikríze, opět s možností zadat tutéž informaci pomocí kódu). Výhodou zadávání kódem by v budoucnu mohlo být provázání s již zadanými informacemi v NIS, Indikující lékař by tedy reálně tyto informace zadávat podruhé nemusel. 

**Platba**

Tato část umožňuje upřesnění, pokud je část vyšetření hrazena jinak než většina (např. speciální rekonstrukce nehrazené pojištěním). I když je vyžadováno, aby byla tato část přítomna, není povinné ji vyplňovat, což znamená, že může být ponecháno prázdné, pokud to není možné.

Volný textový komentář k úhradě lze použít v případě potřeby upřesnit, kterou část péče hradí jiný plátce. To umožňuje jasnost a transparentnost, pokud jde o finanční odpovědnost a ujednání související s poskytovanými zdravotnickými službami.

**Termín vyšetření (návštěvy)**

Tato požadovaná sekce zahrnuje potvrzené informace z vyšetřujícího ZZ o objednávce, tj. na kdy je pacient objednán, kam má přijít, včetně volného textu komentáře (např. MR na 2. patře hlavní budovy). Využití těchto struktur předpokládá, že bude možné po přijetí žádanky vyšetřujícím ZZ tyto informace „doplnit“ neboli vytvořit aktualizovanou verzi žádanky tuto informaci obsahující.

**Objednávky plánované péče**

Odkazy na objednávky plánované péče navazující na tuto žádanku. Kromě ID by měl obsahovat i název této schůzky, ostatní informace by se měly automaticky doplnit z odkazované objednávky. Například “Konzultace na neurochirurgii”, přes ID pak zjistit, že bude v ÚVN 15.3.2040 v 16:15.

**Implantáty**

V této sekci je uveden seznam implantátů či pomůcek majících vliv na průběh vyšetření či jeho interpretaci.

**Přílohy**

Tato požadovaná sekce umožní přidat libovolný další zdroj informací (například ambulantní zprávy, propouštěcí zprávy – v digitální podobě nebo i jen scan, data poskytnutá pacientem atd. Opět není povinná, pouze otevíráme možnost libovolné přílohy).