Instance: BundleNovakovaCT
InstanceOf: CZ_BundleImageOrder
Title: "Bundle: CT břicha - neadresná žádanka - Nováková"
Description: "Příklad neadresné žádanky (Bundle) na CT břicha s kontrastní látkou u pacienta s alergií na jód"
Usage: #example
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:7a1c9e20-3f4a-4b7a-9e2f-6c1d2a9b5e11"
* type = #document
* timestamp = "2025-08-27T09:15:00+02:00"

* entry[composition].fullUrl = "urn:uuid:1e3a2f10-4b5c-4d6e-8f70-9a1b2c3d4e5f"
* entry[composition].resource = Composition-novakova-ct

* entry[patient].fullUrl = "urn:uuid:2f4b3a21-5c6d-4e7f-9081-a2b3c4d5e6f0"
* entry[patient].resource = cz-patient-novakova

* entry[orderInformation].fullUrl = "urn:uuid:3a5c4b32-6d7e-4f80-9192-b3c4d5e6f701"
* entry[orderInformation].resource = cz-novakovact-example1

* entry[allergyIntolerance].fullUrl = "urn:uuid:4b6d5c43-7e8f-4091-a2a3-c4d5e6f70812"
* entry[allergyIntolerance].resource = AllergyJodNovakova

* entry[coverage].fullUrl = "urn:uuid:5c7e6d54-8f90-41a2-b3b4-d5e6f7081923"
* entry[coverage].resource = cz-novakovainsurance-example

* entry[practitioner].fullUrl = "urn:uuid:6d8f7e65-9a01-42b3-c4c5-e6f708192a34"
* entry[practitioner].resource = cz-practitioner-dlouhy-example

* entry[practitionerRole].fullUrl = "urn:uuid:7e90806f-2109-4321-cba9-87654321fed1"
* entry[practitionerRole].resource = cz-example-practitionerRole-radiologie

* entry[organisation].fullUrl = "urn:uuid:8fa19170-3210-4432-dcba-98765432fe10"
* entry[organisation].resource = cz-organization-novakova-example

* entry[organisation][+].fullUrl = "urn:uuid:9ab2a281-4321-4543-edcb-a9876543210f"
* entry[organisation][=].resource = cz-organizace-odesilajici-example

* entry[encounter].fullUrl = "urn:uuid:abc3b392-5432-4654-fedc-ba9876543201"
* entry[encounter].resource = cz-encounter-novakova-example

* entry[condition].fullUrl = "urn:uuid:bcd4c4a3-6543-4765-0fed-cba987654321"
* entry[condition].resource = NovakovaCondition

* entry[observation][0].fullUrl = "urn:uuid:cde5d5b4-7654-4876-10fe-dcba98765432"
* entry[observation][=].resource = HeightNovakova

* entry[observation][+].fullUrl = "urn:uuid:def6e6c5-8765-4987-2110-edcba9876543"
* entry[observation][=].resource = WeightNovakova

* entry[observation][+].fullUrl = "urn:uuid:ef07f7d6-9876-4a98-3221-fedcba987654"
* entry[observation][=].resource = KreatininNovakova


Instance: Composition-novakova-ct
InstanceOf: CZ_CompositionImageOrder
Description: "Neadresná žádanka na CT vyšetření břicha s kontrastní látkou u pacienta s alergií na jód"
Usage: #inline
* id = "1e3a2f10-4b5c-4d6e-8f70-9a1b2c3d4e5f"
* status = #final
* subject = Reference(urn:uuid:2f4b3a21-5c6d-4e7f-9081-a2b3c4d5e6f0)
* date = "2025-08-27T09:15:00+02:00"
* author = Reference(urn:uuid:7e90806f-2109-4321-cba9-87654321fed1)
* title = "Žádanka o zobrazovací vyšetření - CT břicha s kontrastní látkou (neadresná)"
* confidentiality = #N
* type = $sctCZ#721964003
* category[documentCategory] = $loinc#57133-1

* encounter = Reference(urn:uuid:abc3b392-5432-4654-fedc-ba9876543201)

* section[orderInformation].title = "Requested imaging studies information Document"
* section[orderInformation].code = $loinc#55115-0 "Requested imaging studies information Document"
* section[orderInformation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Neadresná žádanka na CT břicha - k realizaci na libovolném přijímajícím pracovišti dle kapacity; nutno ověřit bezpečnost aplikace jodové kontrastní látky vzhledem k uvedené alergii.</div>"
* section[orderInformation].text.status = #generated
* section[orderInformation].entry[0] = Reference(urn:uuid:3a5c4b32-6d7e-4f80-9192-b3c4d5e6f701)

* section[clinicalQuestion].title = "Clinical question"
* section[clinicalQuestion].code = $loinc#18785-6 "Radiology Reason for study (narrative)"
* section[clinicalQuestion].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Klinická otázka: Vyloučení intraabdominální patologie (susp. tumor slinivky břišní), staging.</div>"
* section[clinicalQuestion].text.status = #additional

* section[supportingInformation].title = "Supporting information"
* section[supportingInformation].code = $loinc#55752-0 "Clinical information"
* section[supportingInformation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Supporting information</div>"
* section[supportingInformation].text.status = #generated
* section[supportingInformation].entry[0] = Reference(urn:uuid:cde5d5b4-7654-4876-10fe-dcba98765432)
* section[supportingInformation].entry[+] = Reference(urn:uuid:def6e6c5-8765-4987-2110-edcba9876543)
* section[supportingInformation].entry[+] = Reference(urn:uuid:ef07f7d6-9876-4a98-3221-fedcba987654)


Instance: cz-patient-novakova
InstanceOf: CZ_PatientCore
Title: "Pacientka Nováková"
Description: "Pacientka Nováková pro příklad neadresné žádanky na CT břicha"
Usage: #example
* id = "2f4b3a21-5c6d-4e7f-9081-a2b3c4d5e6f0"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml" xml:lang="cs" lang="cs">
  <p><strong>Pacient:</strong> Nováková Veronika</p>
  <p><strong>Pohlaví:</strong> žena; <strong>datum narození:</strong> 22. 3. 1978</p>
  <p><strong>Identifikátory:</strong> RID 3071592648; číslo pojištěnce 7803220234</p>
  <p><strong>Adresa:</strong> Lipová 12, 602 00 Brno - Veveří, CZ</p>
  <p><strong>Národnost:</strong> Česká republika; <strong>preferovaný jazyk:</strong> čeština</p>
</div>
"""
* identifier[CPOJ][+].system = "https://ncez.mzcr.cz/fhir/sid/cpoj"
* identifier[CPOJ][=].value = "7803220234"
* identifier[CPOJ][=].use = #official
* identifier[RID][+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID][=].value = "3071592648"
* identifier[RID][=].use = #official

* extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#CZ
* name.use = #usual
* name.family = "Nováková"
* name.given = "Veronika"
* gender = #female
* birthDate = "1978-03-22"
* address[+].use = #home
* address[=].type = #physical
* address[=].text = "Lipová 12, 602 00 Brno - Veveří"
* address[=].line[+] = "Lipová 12"
* address[=].line[=].extension[streetName].valueString = "Lipová"
* address[=].line[=].extension[houseNumber].valueString = "12"
* address[=].city = "Brno"
* address[=].postalCode = "60200"
* address[=].country = "CZ"
  * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"

* communication[+].language = urn:ietf:bcp:47#cs
* communication[=].preferred = true


Instance: HeightNovakova
InstanceOf: CZ_BodyHeight
Usage: #inline
Title: "Tělesná výška pacientky Novákové"
Description: "Příklad tělesné výšky pacientky Novákové"
* id = "cde5d5b4-7654-4876-10fe-dcba98765432"
* subject = Reference(urn:uuid:2f4b3a21-5c6d-4e7f-9081-a2b3c4d5e6f0)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding[LOINC] = $loinc#8302-2
* code.coding[SNOMEDCT].code = #1153637007
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].version = $sctCzEdition
* code.coding[NCLP] = $nclp_new#20411
* valueQuantity.value = 168
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm
* status = #final
* effectiveDateTime = 2025-08-27
* performer = Reference(urn:uuid:6d8f7e65-9a01-42b3-c4c5-e6f708192a34)


Instance: WeightNovakova
InstanceOf: CZ_BodyWeight
Usage: #inline
Title: "Tělesná hmotnost pacientky Novákové"
Description: "Příklad tělesné hmotnosti pacientky Novákové"
* id = "def6e6c5-8765-4987-2110-edcba9876543"
* subject = Reference(urn:uuid:2f4b3a21-5c6d-4e7f-9081-a2b3c4d5e6f0)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* code.coding[LOINC] = $loinc#29463-7
* code.coding[SNOMEDCT].code = #27113001
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].version = $sctCzEdition
* code.coding[NCLP] = $nclp_new#20042
* valueQuantity.value = 71
* valueQuantity.unit = "kg"
* valueQuantity.system = $UCUM
* valueQuantity.code = #kg
* status = #final
* effectiveDateTime = 2025-08-27
* performer = Reference(urn:uuid:6d8f7e65-9a01-42b3-c4c5-e6f708192a34)


// Sérový kreatinin je klinicky relevantní pro posouzení bezpečnosti
// podání jodové kontrastní látky (funkce ledvin) - doplňkově k alergii.
Instance: KreatininNovakova
InstanceOf: CZ_MedicalTestResultCore
Usage: #inline
Title: "Sérový kreatinin pacientky Novákové"
Description: "Laboratorní hodnota sérového kreatininu jako podklad pro posouzení bezpečnosti podání kontrastní látky"
* id = "ef07f7d6-9876-4a98-3221-fedcba987654"
* subject = Reference(urn:uuid:2f4b3a21-5c6d-4e7f-9081-a2b3c4d5e6f0)
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #laboratory
* code.coding[+] = $nclp_new#01511 "Kreatinin (S; látková konc. [µmol/l] *)"
* valueQuantity.value = 78
* valueQuantity.unit = "umol/L"
* valueQuantity.system = $UCUM
* valueQuantity.code = #umol/L
* status = #final
* effectiveDateTime = 2025-08-25


// -----------------------------------------------------------------
// Žádost o zobrazovací vyšetření (CT břicha s kontrastní látkou).
// POZOR: úmyslně bez uvedeného performer - jde o neadresnou žádanku,
// kterou lze realizovat na libovolném přijímajícím pracovišti.
// -----------------------------------------------------------------
Instance: cz-novakovact-example1
InstanceOf: CZ_ImagingOrderInformation
Usage: #inline
Title: "Žádanka na CT břicha s i.v. kontrastní látkou (neadresná)"
Description: "Plánované CT vyšetření břicha s nitrožilním podáním kontrastní látky - neadresná žádanka, klinická kontraindikace (alergie na jód)"
* id = "3a5c4b32-6d7e-4f80-9192-b3c4d5e6f701"
* identifier.system = "http://nemocnice-novakova.cz/ris-order"
* identifier[=].value = "9912045"
* status = #active
* intent = #order
* priority = #routine
* category = $sctCZ#363679005 "zobrazování"
* subject = Reference(urn:uuid:2f4b3a21-5c6d-4e7f-9081-a2b3c4d5e6f0)
* insurance = Reference(urn:uuid:5c7e6d54-8f90-41a2-b3b4-d5e6f7081923)
* bodySite = $sctCZ#818983003 
* code.coding = $sctCZ#169069000 //"CT vyšetření břicha s kontrastní látkou"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"cs\" lang=\"cs\">CT Požadované vyšetření: Břicho s i.v. kontrastní látkou. Žádanka je neadresná - vhodná k realizaci na libovolném přijímajícím pracovišti dle kapacity. UPOZORNĚNÍ: pacientka alergická na jód - před podáním kontrastní látky nutno ověřit bezpečnost aplikace, viz AllergyIntolerance.</div>"
* authoredOn = "2025-08-27T09:15:00+02:00"
* supportingInfo[0] = Reference(urn:uuid:cde5d5b4-7654-4876-10fe-dcba98765432)
* supportingInfo[+] = Reference(urn:uuid:def6e6c5-8765-4987-2110-edcba9876543)
* supportingInfo[+] = Reference(urn:uuid:ef07f7d6-9876-4a98-3221-fedcba987654)
* supportingInfo[+] = Reference(urn:uuid:4b6d5c43-7e8f-4091-a2a3-c4d5e6f70812)
* reasonReference = Reference(urn:uuid:bcd4c4a3-6543-4765-0fed-cba987654321)
* requester = Reference(urn:uuid:6d8f7e65-9a01-42b3-c4c5-e6f708192a34)
* orderDetail.coding[modality] = $dicom#CT "Computed Tomography"
// performer NENÍ uveden - jedná se o neadresnou žádanku


// -----------------------------------------------------------------
// Alergie / intolerance - klinická kontraindikace pro podání
// jodové kontrastní látky.
// Pozn.: pokud existuje v aktuální verzi CZ Core IG specifický
// profil pro AllergyIntolerance, nahraďte "AllergyIntolerance"
// jeho názvem (např. CZ_AllergyIntolerance).
// -----------------------------------------------------------------
Instance: AllergyJodNovakova
InstanceOf: CZ_AllergyIntolerance
Usage: #inline
Title: "Alergie na jód - pacientka Nováková"
Description: "Klinicky významná alergie na jód / jodové kontrastní látky, nutno ověřit před podáním kontrastní látky"
* id = "4b6d5c43-7e8f-4091-a2a3-c4d5e6f70812"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-1"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category = #medication
* criticality = #high
* code = $sctCZ#294913003 // "alergie na jód"
* patient = Reference(urn:uuid:2f4b3a21-5c6d-4e7f-9081-a2b3c4d5e6f0)
* recordedDate = "2025-08-27"
* reaction[0].manifestation = $sctCZ#39579001 "anafylaktická reakce"
* reaction[=].description = "Anamnesticky anafylaktoidní reakce po i.v. podání jodové kontrastní látky (rok 2019)."
* reaction[=].severity = #severe
* note.text = "Před i.v. podáním jodové kontrastní látky nutno ověřit aktuální klinický stav a zvážit alternativní postup (nativní vyšetření, premedikace, jiné kontrastní médium)."


Instance: NovakovaCondition
InstanceOf: CZ_ConditionCore
Usage: #example
Description: "Klinický důvod žádosti o CT vyšetření"
Title: "Reason in code form for CT examination"
* id = "bcd4c4a3-6543-4765-0fed-cba987654321"
* subject = Reference(urn:uuid:2f4b3a21-5c6d-4e7f-9081-a2b3c4d5e6f0)
* code.coding[0] = $mkn10#K869 //"Nemoc slinivky břišní, blíže neurčená"
* code.text = "Suspektní expanze v oblasti hlavy pankreatu, k upřesnění stagingem pomocí CT břicha."


Instance: cz-novakovainsurance-example
InstanceOf: CZ_Coverage
Description: "Příklad pojištění"
Usage: #example
Title: "Coverage - zdravotní pojišťovna"
* id = "5c7e6d54-8f90-41a2-b3b4-d5e6f7081923"
* status = #active
* beneficiary = Reference(urn:uuid:2f4b3a21-5c6d-4e7f-9081-a2b3c4d5e6f0)
* payor = Reference(urn:uuid:8fa19170-3210-4432-dcba-98765432fe10)


Instance: cz-organization-novakova-example
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "Příklad zdravotní pojišťovny (pouze reference přes payor)"
Title: "Organization - Healthcare insurance company 2"
* id = "8fa19170-3210-4432-dcba-98765432fe10"
* name = "Oborová zdravotní pojišťovna zaměstnanců bank"
* identifier[KP].system = "https://ncez.mzcr.cz/fhir/sid/kp"
* identifier[KP].value = "207"


Instance: cz-organizace-odesilajici-example
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "Odesílající organizace (ordinace praktického lékaře) - žádanka nesměřuje na konkrétní přijímací pracoviště"
Title: "Organization - odesílající pracoviště"
* id = "9ab2a281-4321-4543-edcb-a9876543210f"
* name = "Ordinace praktického lékaře MUDr. Karla Dlouhého"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/icp"
* identifier[=].value = "77889900"


Instance: cz-practitioner-dlouhy-example
InstanceOf: CZ_PractitionerCore
Description: "Příklad žádajícího lékaře"
Usage: #example
* id = "6d8f7e65-9a01-42b3-c4c5-e6f708192a34"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "234567891"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Dlouhý"
* name.given = "Karel"
* gender = #male


Instance: cz-example-practitionerRole-radiologie
InstanceOf: CZ_PractitionerRoleOrder
Title: "Practitioner Role - žádající praktický lékař"
Description: "Role žádajícího lékaře - odesílající pracoviště (bez vazby na konkrétní přijímací radiologické pracoviště)"
Usage: #example
* id = "7e90806f-2109-4321-cba9-87654321fed1"
* specialty[0] = $vzp-odbornost#001 "Pracoviště praktického lékaře pro dospělé"
* practitioner = Reference(urn:uuid:6d8f7e65-9a01-42b3-c4c5-e6f708192a34)
* organization = Reference(urn:uuid:9ab2a281-4321-4543-edcb-a9876543210f)

Instance: cz-encounter-novakova-example
InstanceOf: Encounter
Usage: #example
Description: "Příklad kontaktu (ambulantní vyšetření předcházející žádance)"
Title: "Encounter - Nováková"
* id = "abc3b392-5432-4654-fedc-ba9876543201"
* status = #finished
* class = #AMB "ambulatory"
* subject = Reference(urn:uuid:2f4b3a21-5c6d-4e7f-9081-a2b3c4d5e6f0)
* period.start = "2025-08-27T08:30:00+02:00"
* period.end = "2025-08-27T09:15:00+02:00"