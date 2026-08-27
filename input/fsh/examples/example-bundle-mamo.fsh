Instance: BundleMamografieSamoplatce
InstanceOf: CZ_BundleImageOrder
Title: "Žádanka na vyšetření - Preventivní mamografie (Samoplátce)"
Description: "Příklad žádanky na preventivní mamografické vyšetření prsů na vlastní žádost pacientky (mimo screeningový program)."
Usage: #example
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:7e2c9a1b-3f4d-5e6f-7a8b-9c0d1e2f3a4b"
* type = #document
* timestamp = "2026-08-27T11:15:00+02:00"
* entry[composition].fullUrl = "urn:uuid:ebe537ba-7fe2-4b2a-8c56-3d100b67d9be"
* entry[composition].resource = Composition-mamografie-preventivni
* entry[patient].fullUrl = "urn:uuid:43614302-1d18-4b04-929d-d762b16fd688"
* entry[patient].resource = cz-patient-cerna
* entry[orderInformation].fullUrl = "urn:uuid:60ea3958-7344-4969-a0b7-58f849473d05"
* entry[orderInformation].resource = cz-mammo-request
* entry[coverage].fullUrl = "urn:uuid:db6858e6-8d8b-4952-832b-9124cd103b12"
* entry[coverage].resource = cz-selfpay-coverage
* entry[practitionerRole].fullUrl = "urn:uuid:e004e1a9-cbaf-466a-b5b6-f89a4dbaa757"
* entry[practitionerRole].resource = cz-practitionerRole-gynecology
* entry[practitioner].fullUrl = "urn:uuid:3d60c2df-af65-4095-95f6-d3d9b61cb5e7"
* entry[practitioner].resource = cz-practitioner-gynecologist
* entry[condition].fullUrl = "urn:uuid:8d570541-52af-4f8a-886c-fb732a218b68"
* entry[condition].resource = PreventionCondition
* entry[organisation].fullUrl = "urn:uuid:5bdedd9b-27c5-4593-ae3a-968c5f25d253"
* entry[organisation].resource = cz-organizationwithlogo-example

Instance: Composition-mamografie-preventivni
InstanceOf: CZ_CompositionImageOrder
Description: "Struktura dokumentu žádanky pro preventivní mamografii"
Usage: #inline
* id = "ebe537ba-7fe2-4b2a-8c56-3d100b67d9be"
* status = #final
* subject = Reference(urn:uuid:43614302-1d18-4b04-929d-d762b16fd688)
* date = "2026-08-27T11:15:00+02:00"
* author = Reference(urn:uuid:e004e1a9-cbaf-466a-b5b6-f89a4dbaa757)
* title = "Žádanka o zobrazovací vyšetření - Preventivní mamografie"
* confidentiality = #N
* type = $sctCZ#721964003 "žádanka o vyšetření"
* category[documentCategory] = $loinc#57133-1 "Referral note"
* section[orderInformation].title = "Requested imaging studies information Document"
* section[orderInformation].code = $loinc#55115-0 "Requested imaging studies information Document"
* section[orderInformation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Požadované mamografické vyšetření - preventivní screening na žádost pacientky.</div>"
* section[orderInformation].text.status = #generated
* section[orderInformation].entry = Reference(urn:uuid:60ea3958-7344-4969-a0b7-58f849473d05)
* section[clinicalQuestion].title = "Clinical question"
* section[clinicalQuestion].code = $loinc#18785-6 "Radiology Reason for study (narrative)"
* section[clinicalQuestion].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Klinická otázka: Preventivní screening karcinomu prsu u nerizikové pacientky mladší 45 let na vlastní žádost (samoplátkyně). Palpačně bpn.</div>"
* section[clinicalQuestion].text.status = #additional

Instance: cz-patient-cerna
InstanceOf: CZ_PatientCore
Title: "Pacientka: Marie Černá"
Description: "Profil pacientky (38 let) vyžadující vyšetření mimo standardní věkovou hranici screeningu"
Usage: #example
* id = "43614302-1d18-4b04-929d-d762b16fd688"
* identifier[CPOJ][+].system = "https://ncez.mzcr.cz/fhir/sid/cpoj"
* identifier[CPOJ][=].value = "8855221234" // Rodné číslo pacientky nar. 1988
* identifier[CPOJ][=].use = #official
* identifier[RID][+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID][=].value = "3071592652"
* identifier[RID][=].use = #official
* name.use = #usual
* name.family = "Černá"
* name.given = "Marie"
* gender = #female
* birthDate = "1988-05-22"
* address[+].use = #home
* address[=].type = #physical
* address[=].text = "Smetanova 452, 250 01 Brandýs nad Labem"
* address[=].city = "Brandýs nad Labem"
* address[=].postalCode = "25001"
* address[=].country = "CZ"
* address[=].country.extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"

Instance: cz-mammo-request
InstanceOf: CZ_ImagingOrderInformation
Usage: #inline
Title: "Žádanka na screeningovou mamografii"
Description: "Požadavek na bilaterální screeningovou mamografii (MG) obou prsů"
* id = "60ea3958-7344-4969-a0b7-58f849473d05"
* identifier.system = "http://ambulance-gynekologie.cz"
* identifier.value = "2026-MG-0451"
* status = #active
* intent = #order
* category = $sctCZ#363679005 "zobrazování"
* subject = Reference(urn:uuid:43614302-1d18-4b04-929d-d762b16fd688)
* insurance = Reference(urn:uuid:db6858e6-8d8b-4952-832b-9124cd103b12) // Odkaz na samoplátecké krytí
* bodySite = $sctCZ#63482000 "struktura prsu (oboustranně)"
* code.coding = $sctCZ#71651007 "screeningová mamografie"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"cs\" lang=\"cs\">Požadované vyšetření: Screeningová mamografie oboustranná, 2 projekce (kraniokaudální a šikmá) z každého prsu. Vyšetření hrazeno pacientkou.</div>"
* authoredOn = "2026-08-27T11:15:00+02:00"
* reasonReference = Reference(urn:uuid:8d570541-52af-4f8a-886c-fb732a218b68)
* requester = Reference(urn:uuid:e004e1a9-cbaf-466a-b5b6-f89a4dbaa757)
* orderDetail.coding[modality] = $dicom#MG "Mammography"

Instance: PreventionCondition
InstanceOf: CZ_ConditionCore
Usage: #example
Title: "Zdůvodnění - Preventivní screening prsů"
Description: "Kódování preventivního screeningu pomocí MKN-10 klasifikace"
* id = "8d570541-52af-4f8a-886c-fb732a218b68"
* subject = Reference(urn:uuid:43614302-1d18-4b04-929d-d762b16fd688)
* code.coding = $mkn10#Z12.3 "Speciální screeningové vyšetření zaměřené na novotvar prsu"
* code.text = "Preventivní screeningové vyšetření prsů na vlastní žádost pacientky. Věk 38 let (pod hranicí úhrady z veřejného zdravotního pojištění). Rodinná anamnéza bez prokazatelného genetického zatížení."

Instance: cz-practitioner-gynecologist
InstanceOf: CZ_PractitionerCore
Description: "Indikující registrující gynekolog"
Usage: #example
* id = "3d60c2df-af65-4095-95f6-d3d9b61cb5e7"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "112233445"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Ženský"
* name.given = "Aleš"
* gender = #male

Instance: cz-practitionerRole-gynecology
InstanceOf: CZ_PractitionerRoleOrder
Title: "Role: Gynekologie a porodnictví"
Description: "Kontext pracoviště registrujícího gynekologa"
Usage: #example
* id = "e004e1a9-cbaf-466a-b5b6-f89a4dbaa757"
* specialty = $vzp-odbornost#603 "Gynekologie a porodnictví"
* specialty[+] = $sctCZ#394586005 "gynekologie a porodnictví - specializace"
* practitioner = Reference(urn:uuid:3d60c2df-af65-4095-95f6-d3d9b61cb5e7)
* organization = Reference(urn:uuid:5bdedd9b-27c5-4593-ae3a-968c5f25d253)

Instance: cz-selfpay-coverage
InstanceOf: CZ_Coverage
Description: "Identifikace typu úhrady vyšetření (samoplátce)"
Usage: #example
Title: "Úhrada vyšetření - Samoplátce"
* id = "db6858e6-8d8b-4952-832b-9124cd103b12"
* status = #active
* beneficiary = Reference(urn:uuid:43614302-1d18-4b04-929d-d762b16fd688)
* payor = Reference(urn:uuid:43614302-1d18-4b04-929d-d762b16fd688)
* type = http://terminology.hl7.org/CodeSystem/coverage-selfpay#pay