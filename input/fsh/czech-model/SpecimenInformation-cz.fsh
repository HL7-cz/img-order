Logical: LogCzSpecimenInformationCz				
Id: logSpecimenInformationCz
Title: "A.2.6 - Informace o vzorku"				
Description:  """Pro specifická obrazová vyšetření vzorku"""

* insert SetFmmandStatusRule( 1, draft)	

* id 1..* Identifier "A.2.6.1 - ID vzorku" """Identifikátor vzorku, který je jedinečný v rozsahu zvoleného rámce. Například: identifikátor přidělený objednávkovým systémem, identifikátor přidělený laboratoří apod. Možné je použití více identifikátorů."""
* biologickyDruh 0..1 CodeableConcept "A.2.6.2 - Biologický druh" """Biologický druh - týká se vzorků odebraných nikoliv přímo pacientovi, ale subjektu s pacientem souvisejícím. 
- Preferovaný systém: SNOMED CT"""
* material 0..1 CodeableConcept "A.2.6.3 - Materiál" """Materiál vzorku.. 
- Preferovaný systém: SNOMED CT
- Preferovaný systém: NCLPMAT"""
* datumACasSberu 1..1 dateTime "A.2.6.4 - Datum a čas odběru, nebo čas ukončení  sběru a doba sběru" """Datum a čas odběru, nebo čas ukončení  sběru a doba sběru materiálu."""
* datumACasTransportu 0..1 dateTime "A.2.6.5 - Datum a čas zahájení transportu vzorku do laboratoře" """Datum a čas zahájení transportu vzorku do laboratoře."""
* typ 0..1 CodeableConcept "A.2.6.6 - Typ vzorku." """Entity odebrané za účelem vyšetření.
- Preferovaný systém: SNOMED CT"""
* anatomickeUmisteni 0..1 CodeableConcept "A.2.6.7 - Anatomické umístění" """Anatomické umístění (umístění v rámci těla, lateralita) odkud je materiál odebrán, například 'levý loket'. 
- Preferovaný systém: SNOMED CT"""
* morfologie 0..1 CodeableConcept "A.2.6.8 - Morfologie" """Morfologické abnormality anatomického umístění odkud je materiál odebrán, například rána nebo vřed. 
- Preferovaný systém: SNOMED CT"""
* zarizeni 0..1 CodeableConcept "A.2.6.9 - Zařízení" """V případě, že není materiál odebrán přímo z pacienta, ale pochází z předmětu, který s pacientem souvisí (například katetr).
- Preferovaný systém: SNOMED CT"""
* procedura 0..1 CodeableConcept "A.2.6.10 - Procedura sběru" """Sampling procedure - for cases where it is relevant to the results.
- Preferovaný systém: SNOMED CT"""
* zdroj 0..1 CodeableConcept "A.2.6.11 - Zdroj materiálu" """If the material is not collected directly from the patient but comes from a patient-related object, e.g. a catheter
 - Preferovaný systém: SNOMED CT
 - Preferovaný systém: EMDN"""
* odberoveMisto 0..1 CodeableConcept "A.2.6.12 - Odběrové místo" """Prostor, kde byl realizován odběr materiálu; týká se prostředí, ne pacienta.
 - Preferovaný systém: SNOMED CT (environment)"""
* poznamka 0..1 string "A.2.6.13 - Poznámka" """Poznámka k materiálu volným textem"""

* kontejner 0..* Base "A.2.6.14 - Kontejner" """"""
* kontejner.typ 0..1 CodeableConcept "A.2.6.14.1 - Typ" """Typ kontejneru pro odběr vzorku - zkumavka, odběrový vak atp. včetně chemických aditiv.
 - Preferovaný systém: SNOMED CT
 - Preferovaný systém: NCLPONP"""
* kontejner.pocet 0..1 integer "A.2.6.14.2 - Počet" """Počet kontejnerů s jedním stejným vzorkem (např. v případě, že se objem vzorku nevejde do jednoho kontejneru)"""
* kontejner.deviceId 1..1 Identifier "A.2.6.14.3 - Device Id" """Unikátní identifikátor kontejneru strojově čitelný."""
* kontejner.oznaceni 0..1 Identifier "A.2.6.14.4 - Označení" """Lidsky čitelný identifikátor kontejneru."""

* dalsiData 0..1 Base "A.2.6.15 - Další formalizované údaje o vzorku" """ """
* dalsiData.datum 0..1 date "A.2.6.15.1 - Datum" """Datum zjištění údaje, uvádí se, pokud je odlišné od data vystavení objednávky."""
* dalsiData.kod 1..1 CodeableConcept "A.2.6.15.2 - Kód" """Kód pozorování identifikující význam údaje (interval času sběru, objem sebraného materiálu; hustota; stav materiálu, typ odběru, atd.)
 - Preferovaný systém: NČLPPOL"""
* dalsiData.hodnota 0..1 Quantity "A.2.6.15.3 - Hodnota" """Hodnota údaje včetně jednotky měření."""

* odebirajici 0..1 Base "A.2.6.16 - Odebírající" """"""
* odebirajici.id 1..* Identifier "A.2.6.16.1 - Identifikátor odebírajícího pracovníka" """Identifikační číslo odebírajícího pracovníka - jedná se buď o interní identifikátor přidělený provozovatelem zdravotní péče nebo (nejlépe) národní ID zdravotnického pracovníka jako například licence nebo registrační číslo."""
* odebirajici.jmeno 1..1 HumanName "A.2.6.16.2 - Jméno odebírajícího pracovníka" """Jméno osoby."""
* odebirajici.kontakt 1..1 ContactPoint "A.2.6.16.3 - Kontaktní údaje odebírajícího pracovníka" """Kontaktní údaje odebírajícího pracovníka (adresa a telekomunikační údaje)."""
* odebirajici.organizace 0..1 Base "A.2.6.16.4 - Organizace odebírajícího pracovníka" """Organizace odebírajícího pracovníka (poskytovatel zdravotních služeb)."""
