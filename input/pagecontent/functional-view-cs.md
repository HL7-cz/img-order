### Actors

<br>

**Žádající lékař**

Alias: Indikující lékař, žadatel, objednatel, klinik – lékař, který indikuje vyšetření na pracovišti zobrazovacích metod. Jedná se o lékaře, který má po stránce odborové právo žádat o toto vyšetření a současně je toto lékař, kterému je zasílán výsledek obrazového vyšetření (zpráva z obrazového vyšetření, případně samotné snímky). 

**Pacient**

Fyzická osoba, která podstupuje lékařské vyšetření, v tomto kontextu osoba, které jej vystavena žádanka na obrazové vyšetření

**Odesílají NIS/RIS**

IS objednatele, ve kterém vzniká žádanka na obrazové vyšetření. Poskytuje plnou podporu při jejím vyplňování, automaticky doplňuje známé položky a poskytuje podporu (například výběr z číselníků, …) pro vyplňování hodnot určených k upřesnění jednotlivých částí žádanky. 

**Přijímající NIS/RIS**

IS přijímajícího zdravotnického zařízení, ve kterém je žádanka na obrazové vyšetření přijata a kde bude vyšetření buď prováděno nebo bude směrováno na další specializované pracoviště. 

**Zpracovatel**

Zdravotnické zařízení, poskytovatel zdravotnické péče, ve kterém je žádanka přijata a provedena. V případě adresné žádanky je na žádance Zpracovatel určen konkrétně dle požadavků na objednané vyšetření. 

**Dodatečný příjemce nálezu**

Lékař, kterému bude, kromě Objednatele, zaslán nález, jakož výsledek vyšetření obrazovou metodou. Nález je dle zákona standardně odesílán k Objednateli. V případě lékařské potřeby je možné nález směřovat i na jiného zdravotnického pracovníka než jen na Objednatele, a to na Dodatečného příjemce nálezu. 

### Případy užití

---

#### Případy užití: Neadresná žádanka

##### Scénář: Prostý snímek hrudníku

Indikující lékař vytvoří žádanku na prostý snímek hrudníku, buď pomocí požadované procedury “RTG snímek hrudníku” nebo pomocí kombinace modality RTG (DX, přímá radiografie) a vyšetřované části těla hrudník. Pro vypsání žádanky je kromě typu požadovaného vyšetření nutné vyplnit výšku a váhu pacienta, omezení pohyblivosti pacienta, diagnózu a klinickou otázkou, na kterou má vyšetření odpovědět. Indikující lékař na žádanku neuvede “odeslán ad” a nezáleží mu na tom, které ZZ pacienta vyšetří. Je na pacientovi, kam žádanku doručí a buď je rovnou vyšetřen, nebo na vyšetření objednán. 

Příjem žádanky vyžaduje od NIS/RIS schopnost “zobecnění” požadovaného vyšetření na úroveň prováděných vyšetření, které se mohou mezi modalitami lišit. 

Ve výše uvedeném případě může klinik zaslat požadavek na RTG snímek plic, z jehož SNOMED CT kódu lze odvodit jeho rodiče, kterým je RTG snímek hrudníku. Tím se umožní přesně specifikovat požadované vyšetření (RTG plic) a přeložit ho do standardně prováděného vyšetření (RTG hrudníku). Díky tomu lze zpracovat i neobvyklý požadavek na RTG snímek srdce, protože jeho předkem je opět RTG hrudníku.

Ve srovnání se stávajícím žádankou je nově pouze informace o mobilitě pacienta, která by měla být předdefinována jako “chodí” (tj. tato hodnota se použije, pokud indikující lékař neuvede jinak). U pacientů se sníženou mobilitou (sedačka, lůžko) ZZ v předstihu uvidí, zda je vyšetření schopné poskytnout (vhodné projekce k došetření patologie, dále např. absence bezbariérového vstupu, nedostatek personálu na polohování pacienta atd.).


##### Scénář: Ultrazvuk břicha

Objednavatel vytvoří žádanku na ultrazvuk břicha, do které uvede všechny povinné informace. Pro vyšetření na ultrazvuku nejsou povinné biometrické údaje (hmotnost, výška). V případě, že není požadované specifické místo provedení vyšetření (výkonu procedury, viz adresná žádanka níže), indikující lékař na žádanku opět nemusí uvést “odeslán ad”, pokud mu nezáleží na tom, které ZZ pacienta vyšetří (je na pacientovi, kam se na vyšetření objedná).   

Ve srovnání se stávajícím žádankou je nově pouze informace o mobilitě pacienta (viz výše, opět zdůvodnění možnosti přístupu pacienta k modalitě – bezbariérové vstupy, časová náročnost atd).

##### Scénář: CT břicha
Objednavatel vytvoří žádanku na CT břicha, do které uvede všechny povinné informace. Pokud se nejedná o vyšetření typicky prováděné bez intravenózní kontrastní látky (CT mozku, skeletu, ledvin na močové kameny), je požadováno uvést i další relevantní informace, které by mohly ovlivnit vyšetření (např. renální selhání, neklid pacienta) nebo kontraindikovat intravenózní podání kontrastní látky (alergie či léky interagující s jodovou kontrastní látkou). V případě, že není požadované specifické místo provedení vyšetření, na žádance opět nemusí být uvedeno “odeslán ad” (viz výše i níže).  

Ve srovnání se stávajícím žádankou je nově pouze informace o mobilitě pacienta (opět např. z důvodu absence bezbariérového vstupu, nedostatku personálu na polohování či přesouvání pacienta, časová náročnost atd.). 

Kromě indikujícího lékaře (například praktického lékaře) může být zpráva relevantní pro další odborníky, ke kterým je pacient objednán. Proto navrhujeme kromě bloku “Encounter/klinická událost” ([A.2.3](StructureDefinition-ClinicalEventCz.html)), který automaticky odkazuje na ambulantní vyšetření u daného praktického lékaře, z kterého žádanka vznikla, nabídnout i možnost zadat informace o dalším vyšetření (například klinikem – gastroenterologem). K tomu slouží blok [A.3.3.](StructureDefinition-PlannedCareOrdersCz.html) "Objednávky plánované péče" (kam je možné vložit informaci o naplánovaném vyšetření, tedy z hlediska funkční specifikace informaci kdy a kam se na navazující péči má pacient dostavit) případně [A.3.4](StructureDefinition-OtherSupportingInformationCz.html) s jinou pomocnou informací.


##### Scénář: Mamografie

Indikující lékař vytvoří žádanku na mamografii, do které uvede všechny povinné informace. U mamografie není povinné uvádět biometrické údaje (hmotnost, výška), protože narozdíl od ostatních modalit využívajících ionizující záření nejsou tyto hodnoty potřebné pro výpočet radiační dávky. Žádanka opět může být neadresná i adresná (viz dále), informace o mobilitě bude využita pravděpodobně jen velmi vzácně, nicméně s ohledem na výchozí hodnotu “chodí” nebude její zadávání u chodících pacientek (kterých bude drtivá většina) přidávat další práci objednavateli.

---

#### Případy užití: Adresná žádanka

##### Scénář: MR cíleným protokolem

Indikující lékař je domluven s konkrétním ZZ či vyšetřujícím lékařem na tom, že pacienty vyšetří konkrétním domluveným protokolem (např. dynamické vyšetření temporomandibulárních kloubů). Proto indikující lékař vyplní “odeslán ad” a očekává převzetí žádanky konkrétním ZZ. K takovémuto přenosu žádanky by mohl sloužit point-to-point přenos metodou “PUSH”. Po přijetí by další koordinace vyšetření byla v gesci vyšetřujícího ZZ. 

Kromě povinných informací je na žádance požadováno vyplnění dalších relevantních informací, které by mohly ovlivnit nebo kontraindikovat vyšetření nebo podání kontrastní látky (např. neklid pacienta, klaustrofobie, gravidita, renální selhání, implantáty v těle). Biometrické údaje jsou u MR uvedeny jako povinné z důvodu plánování dávky případného podání kontrastní látky a kompatibility velikosti pacienta a MR přístroje (délka stolu, nosnost stolu, průměr gantry).

Ve srovnání se stávajícím žádankou je nově pouze informace o mobilitě pacienta (opět např. z důvodu absence bezbariérového vstupu, nedostatku personálu na polohování či přesouvání pacienta atd.).


##### Scénař: Odmítnutá adresná žádanka

Indikující lékař vyjádří přání, ve kterém ZZ by mělo být vyšetření provedeno, ale toto pracoviště z nějakého důvodu nemůže vyšetření v požadovaném termínu provést (servis stroje či jiná technická odstávka, vyš. již neprovádí, ...). V tomto případě lze adresnost žádanky ignorovat a vyšetření provést na libovolném ZZ. 

##### Scénář: vyšetření v jiném ZZ

Vzhledem k tomu, že je uzákoněna svobodná volba lékaře, může se pacient rozhodnout ignorovat doporučení konkrétního ZZ pro jeho vyšetření a vydat se “jinam”. V tom případě zvolené ZZ musí mít možnost přijmout i žádanku určenou pro jiné ZZ.

##### Scénář: PET/CT

Indikující lékař vytvoří žádanku na PET/CT (z [DICOM modalit](index.html#modality-table) vybere PET i CT), které se obvykle provádí na pracovišti, se kterým spolupracuje. Na žádanku vyplní kromě povinných informací, také informace, které by mohly ovlivnit průběh vyšetření a podání jodové kontrastní látky. Žádanka může být adresována spolupracujícímu pracovišti, vyšetření ale může být provedeno dle svobodné volby pacienta i v jiném zdravotnickém zařízení, které toto vyšetření provádí. 
Do klinických informací je vhodné doplnit informace, které by mohly ovlivnit interpretaci vyšetření (datum ukončení radioterapie či chemoterapie, datum poslední operace, datum lokální ablační léčby atd.).

Tento postup lze uplatnit i na PET/MR vyšetření.

##### Scenario: Angioplastika periferních tepen

Indikující lékař vytvoří žádanku na angioplastiku periferních tepen, která se obvykle provádí na základě předchozí domluvy ([scénář 3.2.3.1](functional-view.html#scenario-received-general-consultation), obecná konzultace, specifikace daného není součástí tohoto dokumentu) na pracovišti, se kterým spolupracuje. Na žádanku vyplní kromě povinných informací, také informace, které by mohly ovlivnit průběh vyšetření a podání jodové kontrastní látky, a to včetně koagulačních parametrů (INR, počet trombocytů). 

Žádanka bude adresována pracovišti, které výkon provádí. Do přílohy žádanky je možné připojit výsledky předchozích vyšetření a zejména písemné vyjádření schvalující provedení tohoto výkonu (např. zápis mezioborové komise či konzultace jinou odborností). Navíc tato žádanka obsahuje i informaci o lateralitě, kterou je nutno předat. Jako příklad může posloužit angioplastika tepny a. tibialis anterior vlevo (SNOMED kód 312643005 a přesná “levá” s kódem code 2014100008710).
Druhá uvedená varianta je přesnějším kódem, který by se měl použít. Nicméně patrně bude potřeba vypracovat i koncept, který z prvního kódu a levostranné laterality odvodí kód druhý. Přesnou implementaci bude nutné ověřit na funkčním prototypu.

Tento postup lze uplatnit i na jiné vaskulární či nevaskulární intervence.

---

#### Případy užití: Konzultace

##### Scénař: Přijatá obecná konzultace
Indikující lékař vyžaduje konzultovat ZZ ohledně správného diagnostického zobrazení dané patologie (např. optimální modalita, časování kontroly, specificita a senzitivita vyšetření v daném specifickém případě, využití kontrastní látky) nebo indikující lékař konzultuje správnosti indikace a proveditelnost intervenčního výkonu (např. drenáž žlučových cest, indikující lékař se informuje, zdali je u daného pacienta vhodné provést na základě předchozích vyšetření, existuje přístupová cesta, nejsou kontraindikace výkonu). 

V daných případech vzhledem k tomu, že výstup není zobrazovací metoda, ale pouze text konzultace, doporučujeme využít obecnou konziliární žádanku typu K (specifikace které není součástí dokumentu). Doporučujeme, aby NIS přímo umožňovaly přepnutí mezi žádankou na zobrazovací vyšetření a obecnou konzultaci tak aby nebylo nutné znovu zadávat již jednou zadané informace (například anamnézu či klin. otázku). 

U žádanky na zobrazovací vyšetření požadujeme výběr modality vyšetření dle kódu DICOM (DICOM neobsahuje pouhou konzultaci), proto není pro toto užití ideální.

For a referral for imaging examination, selecting the examination modality according to the DICOM code is required (DICOM does not include a simple consultation), which means it is not ideal for this use case. 

##### Scénař: Odmítnutá indikace

V případě, že z medicínských, technických důvodů není vyšetření provedeno nebo pacient se na vyšetření nedostavil či indikované vyšetření odmítl (např. vyšetření RTG lebky k vyloučení intrakraniálního krvácení, klaustrofobie u MR, omezení vyšetřovacího prostoru pro objem pacienta, dále pacient se nedostavil na vyšetření z důvodu úmrtí v ZZ).V tom případě využíváme tradiční žádanku (žádanka obsahuje předpokládanou modalitu zobrazení dle DICOM), z které nevzniká zobrazovací vyšetření, pouze text konzultace, který je nálezem vyšetření.

---

#### Případ užití: Přijetí žádanky zařízením, které interně používá obecnější seznam vyšetření

##### Scénář
Indikující lékař vytvoří ve svém systému žádanku na MR hypofýzy, ale vyšetřující ZZ pracuje s hrubší granularitou a umožňuje objednat jen mozek. Žádanku musí jít přijmout na základě SNOMED-CT hran, které umožní odvodit, že koncept MR hypofýzy je podřazen MR mozku a podle toho vytvoří příslušnou žádanku.

V tom případě musí být pro vyšetřující zřetelně viditelná i informace o původní kódované informaci (včetně textové reprezentace), tedy že původně byla požadována MR hypofýzy. 

Systém indikujícího lékaře musí podporovat celý číselník vyšetření a částí těla, nicméně je přípustné, aby nabízel jen pod-výběr, zejména v případě adresné žádanky, kde by vyšetřující ZZ mohlo a mělo publikovat seznam vyšetření, které provádí (white list) nebo neprovádí (Black list) a stejně tak i modality, jimiž disponuje.