### Sekce a obsah

Dokument je rozdělen do sady povinných sekcí. Sekce jsou povinné, nikoli volitelné, aby bylo jasné, proč nejsou k dispozici žádná data, což je vyjádřeno v `composition.section.emptyReason`.

### Struktura dokumentu

Zobrazovací zpráva obsahuje následující sekce v tomto pořadí:

#### Hlavička obrazové žádanky

**Identifikace pacienta**

V tomto oddílu nalezneme zákldaní údaje o pacientovi jako je jeho identifikátor, jméno nebo adresa.

**Kontaktní informace pacienta**

Oddíl obsahuje kontaktní informace osob, které mohou poskytovat dodatečné informace o pacientovi. Může zde být i kontakt na jiného lékaře. Tato informace je zvláště potřebná u pacientů se vzácným onemocněním.

Typ kontaktní osoby rozlišuje emergentní kontakty, zákonné zástupce a ostatní osoby se vztahem k pacientovi. Jde o definici kontaktních osob, na které je možné se obracet kvůli přípravě pacienta na vyšetření či v jiných případech.

**Zdravotní pojištění**

Zdravotní pojištění pacienta, které nemusí být nutně i plátcem vyplnění dané žádanky. 

**Úhrada**

Obsahuje údaje, jakým způsobem bude vyšetření uhrazeno.

**Objednatel**

Obsahuje identifikaci zdravotnického pracovníka nebo jiné osoby objednávající vyšetření.

**Zpracovatel**

Obsahuje údaje o předpokládaném zpracovateli žádanky (u neadresné žádanky nebude zpracovatel uveden).

**Příjemce nálezu**

Může obsahovat identifikaci dodatečných příjemců nálezu kromě objednatele.

**Metadata dokumentu**

Obsahuje další informace o dokumentu žádanky jako např.: Správce dokumentu.

**Elektronické podpisy**

Obsahem této sekce je elektronický podpis dokumentu dle zákona `327/2011 §54a`.

#### Tělo obrazové žádanky

**Informace o objednávce**

Tato požadovaná sekce zahrnuje povinný identifikátor žádanky ([A.2.1.1](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.identifier)), datum a čas jejího vytvoření ([A.2.1.2](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.dateTime)) – pokud je založena sekce informací, musí tyto informace obsahovat. Mezi volitelné položky patří urgentnost objednávky (z pohledu indikujícího lékaře) vyjádřená mezinárodním kódem ze sytému HL7 ([Request Priority](https://hl7.org/fhir/valueset-request-priority.html)) ([A.2.1.4](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.urgency)), který může nabývat hodnot routine (běžná priorita), urgent (spěchá), asap (co možná nejdříve) a stat (status iminens, STATIM). Další volitelnou položkou je datum a čas požadovaného vyšetření  ([A.2.1.3](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.requestedExecdateTime)), zde se nejedná o termín skutečného objednání, otevírá se zde možnost např. zaslat žádanku s prosbou o objednání na den, kdy má pacient ambulantní klinickou kontrolu.

Další požadavky / podrobné specifikace zkoušky ([A.2.1.5](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.orderText)) je další volitelné pole, které může obsahovat další informace pro objednávku. To může zahrnovat například požadavek odesílajícího lékaře na použití specifického dohodnutého protokolu nebo provedení vyšetření na konkrétním přístroji MRI.

Poslední volitelnou položkou jsou informace pro pacienta, jako jsou požadavky na lačno, vysazení léků, rady ohledně klaustrofobie atd.

**Odůvodnění vyšetření (důvod objednávky)**

Tato požadovaná sekce zahrnuje indikační diagnózu ([A.2.2.1](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderReason.problem)), která je vyžadována zdravotními pojišťovnami k proplacení služby. Další položky zahrnují klinickou otázku (věta tázací, měla by končit otazníkem a mělo by možné na ni na základě obrazového vyšetření odpovědět) případně zadanou i kódem SNOMED-CT a důvod objednávky (v podstatě odpovídá stručné epikríze, opět s možností zadat tutéž informaci pomocí kódu). Výhodou zadávání kódem by v budoucnu mohlo být provázání s již zadanými informacemi v NIS, Indikující lékař by tedy reálně tyto informace zadávat podruhé nemusel. 

**Termín vyšetření (návštěvy)**

Tato požadovaná sekce zahrnuje potvrzené informace z vyšetřujícího ZZ o objednávce, tj. na kdy je pacient objednán, kam má přijít, včetně volného textu komentáře (např. MR na 2. patře hlavní budovy). Využití těchto struktur předpokládá, že bude možné po přijetí žádanky vyšetřujícím ZZ tyto informace „doplnit“ neboli vytvořit aktualizovanou verzi žádanky tuto informaci obsahující.

**Klinické informace**

Tato požadovaná sekce zahrnuje biometrické údaje (váhu a výšku), další klin. relevantní informace volným textem případně MKN-10 kódem (např. klaustrofobie při žádance o MR), informace o medikaci (relevantní např. před kontrastním vyšetření na CT), informace o implantátech (pro MR), urgentní informace (alergie, intolerance, případně libovolná jiná varování volným textem). Modul urgentních informací je komponenta společná pro další modely. Další formalizované údaje mohou pomoci předat libovolnou informaci o pacientovi (např. týden gravidity před gynekologickým UZ vyšetřením). Kromě toho by měly klinické informace obsahovat i případná omezení pacienta (upoután na vozík/na lůžko, nevidomý, porucha sluchu).

**Datové elementy objednávky / vyšetření**

Tato požadovaná sekce zahrnuje datové elementy požadovaného vyšetření, a to šest nejdůležitějších položek (celý blok se může vyskytnout víckrát např. pro MR mozku a krční páteře):

1)	Kód vyšetření – SNOMED-CT kód reprezentující dané vyšetření

2)	Název vyšetření – volitelný text nezávislý na kódovaných datech

3)	Modalita – vycházející z mezinárodního číselníku DICOM modalit. Limitací je fakt, že např. skiagram lze provést celkem třemi způsoby (DICOM modalitami):

   - RTG – konvenční snímek na film, který je následně skenován,
   - Computed radiography (CR) ze stroje s nepřímou digitalizací a 
   - DX ze stroje s přímou digitalizací

        > Vzhledem k ústupu RG a CR lze pro účely žádanky předpokládat, že požadovaným vyšetřením je DX. Pokud by vyšetření bylo provedeno jinou skiagrafickou modalitou, neměl by to být problém, protože jako sekundární modality by byly též namapovány na skiagram/prostý snímek. Mapování DICOM atributů řeší [tabulka typů modalit](scope-and-content-cs.html#tabulka-typů-modalit).

4)	Část těla – část číselníku SNOMED-CT definovaná DICOM standardem. Důvodem je, že kompletní sada hodnot SNOMED-CT obsahuje i obecné části těla (např. šlacha), což pro zobrazovací vyšetření není užitečné, my potřebujeme vědět, zda je ta šlacha na ruce nebo na noze

5)	Lateralita – na rozdíl od číselníku DASTA nezná SNOMED-CT/FHIR koncept “oboustrannosti”, ale v případě vyšetření obou stran by měly být vytvořeny zvlášť hodnoty pro levou a pravou stranu

6)	Poznámka – prostor pro poznámku k vyšetření volným textem, může obsahovat přesnější specifikaci požadovaného vyšetření volným textem, či zvláštní přání klinika (např. na MR: Prosím o zhotovení i frontálních vrstev ve FLAIR skloněné podle hippokampů).

**Termín vyšetření (návštěvy)**

Tato požadovaná sekce zahrnuje potvrzené informace z vyšetřujícího ZZ o objednávce, tj. na kdy je pacient objednán, kam má přijít, včetně volného textu komentáře (např. MR na 2. patře hlavní budovy). Využití těchto struktur předpokládá, že bude možné po přijetí žádanky vyšetřujícím ZZ tyto informace „doplnit“ neboli vytvořit aktualizovanou verzi žádanky tuto informaci obsahující.

**Přílohy**

Tato požadovaná sekce umožní přidat libovolný další zdroj informací (například ambulantní zprávy, propouštěcí zprávy – v digitální podobě nebo i jen scan, data poskytnutá pacientem atd. Opět není povinná, pouze otevíráme možnost libovolné přílohy).

**Informace o vzorku**

Tato požadovaná sekce je shodná s laboratorní žádankou. Pod pojmem kontejner zde značí libovolné „balení“ vzorku, nejedná se o konkrétní zařízení. V radiologii se stává, že snímkujeme bioptický vzorek (např. získaný biopsií z prsu či peroperačně) a i když většina pracovišť pro tento snímek formální žádanku netvoří, procesně správně je s touto možností počítat. Proto do standardu navrhujeme i tuto sekci, byť se domníváme, že zejména zpočátku nebude příliš využívána.

**Platba**

Tato část umožňuje upřesnění, pokud je část vyšetření hrazena jinak než většina (např. speciální rekonstrukce nehrazené pojištěním). I když je vyžadováno, aby byla tato část přítomna, není povinné ji vyplňovat, což znamená, že může být ponecháno prázdné, pokud to není možné.

Volný textový komentář k úhradě lze použít v případě potřeby upřesnit, kterou část péče hradí jiný plátce. To umožňuje jasnost a transparentnost, pokud jde o finanční odpovědnost a ujednání související s poskytovanými zdravotnickými službami.

**Klinická událost (encounter)**

Tato volitelná sekce může umožnit indikující lékař propojení žádanky s jednou konkrétní klinickou událostí, tj. například návštěvu ambulance, při které žádanka vznikla. Tato informace sama o sobě není pro vyšetření důležitá, nicméně lze touto cestou propojit žádanku s ambulantní či jinou zprávu, která může obsahovat relevantní informace, které klinik na žádanku neuvedl. 

**Objednávky plánované péče**

Odkazy na objednávky plánované péče navazující na tuto žádanku. Kromě ID by měl obsahovat i název této schůzky, ostatní informace by se měly automaticky doplnit z odkazované objednávky. Například “Konzultace na neurochirurgii”, přes ID pak zjistit, že bude v ÚVN 15.3.2040 v 16:15.

**Další podpůrné informace**

Ostatní podpůrné informace – například. Informace o tom, kdy bude výsledek zapotřebí (navazující péče, operace, …). Tato položka je zahrnuta pro to, aby bylo možné propojit nejen s navazující schůzkou/ambulantním vyšetření (k tomu slouží výše uvedený appointment) ale například i s termínem operace. Opět, analogicky k předchozímu, je třeba na základě ID “dotáhnout” potřebné informace, tedy uživateli zobrazit například “16.3.2040 operace žlučníku, VFN Praha”.