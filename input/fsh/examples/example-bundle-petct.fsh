Instance: BundlePetCtLymfom
InstanceOf: CZ_BundleImageOrder
Title: "Žádanka na vyšetření - celotělové PET/CT"
Description: "Příklad komplexní hybridní multimodální žádanky (PET/CT) při podezření na relaps lymfomu."
Usage: #example
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d"
* type = #document
* timestamp = "2026-08-27T10:00:00+02:00"
* entry[composition].fullUrl = "urn:uuid:dbd426a9-d660-4f97-8656-1e39db4a57c9"
* entry[composition].resource = Composition-pet-ct-lymfom
* entry[patient].fullUrl = "urn:uuid:0c7366a1-54d2-41d3-aa78-3fbb81962193"
* entry[patient].resource = cz-patient-novak
* entry[orderInformation].fullUrl = "urn:uuid:213859c2-ac9d-4166-a673-13a50640af90"
* entry[orderInformation].resource = cz-petct-request
* entry[coverage].fullUrl = "urn:uuid:a0bd92b5-4112-4cac-86df-e6cb89b5fcff"
* entry[coverage].resource = cz-insurance-coverage
* entry[practitionerRole].fullUrl = "urn:uuid:8fd3a4cf-173a-43f0-a1f9-5b538d088c03"
* entry[practitionerRole].resource = cz-practitionerRole-oncology
* entry[practitioner].fullUrl = "urn:uuid:6918f12d-318b-4fa7-9462-16a60d6fdfe4"
* entry[practitioner].resource = cz-practitioner-oncologist
* entry[condition].fullUrl = "urn:uuid:aae6b1c0-d22e-4058-b225-8be5669da40e"
* entry[condition].resource = LymphomaCondition
* entry[organisation].fullUrl = "urn:uuid:d9503020-e03b-4a09-b565-3505ec5b12d5"
* entry[organisation].resource = cz-pojistovna-vzp
* entry[organisation].fullUrl = "urn:uuid:5bdedd9b-27c5-4593-ae3a-968c5f25d253"
* entry[organisation].resource = cz-organizationwithlogo-example

Instance: Composition-pet-ct-lymfom
InstanceOf: CZ_CompositionImageOrder
Description: "Struktura dokumentu žádanky pro PET/CT"
Usage: #inline
* id = "dbd426a9-d660-4f97-8656-1e39db4a57c9"
* status = #final
* subject = Reference(urn:uuid:0c7366a1-54d2-41d3-aa78-3fbb81962193)
* date = "2026-08-27T10:00:00+02:00"
* author = Reference(urn:uuid:8fd3a4cf-173a-43f0-a1f9-5b538d088c03)
* title = "Žádanka o zobrazovací vyšetření - Celotělové PET/CT"
* confidentiality = #N
* type = $sctCZ#721964003 "žádanka o vyšetření"
* category[documentCategory] = $loinc#57133-1 "Referral note"

* section[orderInformation].title = "Requested imaging studies information Document"
* section[orderInformation].code = $loinc#55115-0 "Requested imaging studies information Document"
* section[orderInformation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Požadované PET/CT celotělové vyšetření</div>"
* section[orderInformation].text.status = #generated
* section[orderInformation].entry[0] = Reference(urn:uuid:213859c2-ac9d-4166-a673-13a50640af90)

* section[clinicalQuestion].title = "Clinical question"
* section[clinicalQuestion].code = $loinc#18785-6 "Radiology Reason for study (narrative)"
* section[clinicalQuestion].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Klinická otázka: Restaging maligního lymfomu, suspekce na relaps/progresi onemocnění dle klinického stavu.</div>"
* section[clinicalQuestion].text.status = #additional

Instance: cz-patient-novak
InstanceOf: CZ_PatientCore
Title: "Pacient: Jan Novák"
Description: "Profil pacienta odpovídající standardu CZ_PatientCore"
Usage: #example
* id = "0c7366a1-54d2-41d3-aa78-3fbb81962193"
* identifier[CPOJ][+].system = "https://ncez.mzcr.cz/fhir/sid/cpoj"
* identifier[CPOJ][=].value = "8501121234" // Rodné číslo / číslo pojištěnce
* identifier[CPOJ][=].use = #official
* identifier[RID][+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID][=].value = "3071592650"
* identifier[RID][=].use = #official
* name.use = #usual
* name.family = "Novák"
* name.given = "Jan"
* name.prefix = "Bc."
* gender = #male
* birthDate = "1985-01-12"
* address[+].use = #home
* address[=].type = #physical
* address[=].text = "U Lesa 12, 140 00 Praha 4"
* address[=].city = "Praha"
* address[=].postalCode = "14000"
* address[=].country = "CZ"
* address[=].country.extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"

Instance: cz-petct-request
InstanceOf: CZ_ImagingOrderInformation
Usage: #inline
Title: "Žádanka na hybridní PET/CT vyšetření"
Description: "Multimodální požadavek kombinující pozitronovou emisní tomografii a výpočetní tomografii"
* id = "213859c2-ac9d-4166-a673-13a50640af90"
* identifier.system = "http://nemocnice.cz"
* identifier.value = "2026-PETCT-00895"
* status = #active
* intent = #order
* category = $sctCZ#363679005 "zobrazování"
* subject = Reference(urn:uuid:0c7366a1-54d2-41d3-aa78-3fbb81962193)
* insurance = Reference(urn:uuid:a0bd92b5-4112-4cac-86df-e6cb89b5fcff)
* bodySite = $sctCZ#38266002 //"celé tělo" 
* code.coding = $sctCZ#443304001 "positron emission tomography with computed tomography"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"cs\" lang=\"cs\">Požadované vyšetření: 18F-FDG PET/CT celotělové (od základny lebeční po stehna)</div>"
* authoredOn = "2026-08-27T10:00:00+02:00"
* reasonReference = Reference(urn:uuid:aae6b1c0-d22e-4058-b225-8be5669da40e)
* requester = Reference(urn:uuid:8fd3a4cf-173a-43f0-a1f9-5b538d088c03)
* orderDetail[0].coding[modality] = $dicom#PT "Positron Emission Tomography"
* orderDetail[+].coding[modality] = $dicom#CT "Computed Tomography"

Instance: LymphomaCondition
InstanceOf: CZ_ConditionCore
Usage: #example
Title: "Indikační diagnóza - Maligní lymfom"
Description: "Klinické zdůvodnění požadavku pro PET/CT vyšetření"
* id = "aae6b1c0-d22e-4058-b225-8be5669da40e"
* subject = Reference(urn:uuid:0c7366a1-54d2-41d3-aa78-3fbb81962193)
* code.coding = $mkn10#C859 "Maligní nehodgkinský lymfom, neurčený"
* code.text = "Pacient po základní onkologické léčbě, aktuálně s hmatnou lymfadenopatií na krku a subfebriliemi. Podezření na časný relaps onemocnění. Požadováno celotělové PET/CT k posouzení rozsahu metabolické aktivity."

Instance: cz-practitioner-oncologist
InstanceOf: CZ_PractitionerCore
Description: "Odesílající onkolog"
Usage: #example
* id = "6918f12d-318b-4fa7-9462-16a60d6fdfe4"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "998877665" // Číslo ČLK / KRZP lékaře
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Onkologický"
* name.given = "Petr"
* gender = #male

Instance: cz-practitionerRole-oncology
InstanceOf: CZ_PractitionerRoleOrder
Title: "Role: Klinická onkologie"
Description: "Kontext pracoviště odesílajícího lékaře"
Usage: #example
* id = "8fd3a4cf-173a-43f0-a1f9-5b538d088c03"
* specialty[0] = $vzp-odbornost#403 //"Klinická onkologie"
* specialty[+] = $sctCZ#394592004 //"klinická onkologie - specializace"
* practitioner = Reference(urn:uuid:6918f12d-318b-4fa7-9462-16a60d6fdfe4)
* organization = Reference(urn:uuid:5bdedd9b-27c5-4593-ae3a-968c5f25d253)

Instance: cz-insurance-coverage
InstanceOf: CZ_Coverage
Description: "Zdravotní pojištění pacienta"
Usage: #example
Title: "Pojištění pacienta"
* id = "a0bd92b5-4112-4cac-86df-e6cb89b5fcff"
* status = #active
* beneficiary = Reference(urn:uuid:0c7366a1-54d2-41d3-aa78-3fbb81962193)
* payor = Reference(urn:uuid:d9503020-e03b-4a09-b565-3505ec5b12d5)

Instance: cz-pojistovna-vzp
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "Všeobecná zdravotní pojišťovna"
Title: "VZP"
* id = "d9503020-e03b-4a09-b565-3505ec5b12d5"
* name = "Všeobecná zdravotní pojišťovna ČR"
* identifier[KP].system = "https://ncez.mzcr.cz/fhir/sid/kp"
* identifier[KP].value = "111"
