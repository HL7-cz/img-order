Instance: BundleUzPlodMalikova
InstanceOf: CZ_BundleImageOrder
Title: "Bundle: Ultrasound of the fetus (screening) + 3D/4D photography - Malíková"
Description: "Request for screening ultrasound examination of the fetus (covered by insurance) and standard 3D/4D photography of the fetus (paid by the patient)"
Usage: #example
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:11223344-5566-7788-99aa-bbccddeeff00"
* type = #document
* timestamp = "2026-08-31T10:30:00+02:00"

* entry[composition].fullUrl = "urn:uuid:b2e3f4a5-d6c7-4b89-8f12-3c4d5e6f7a81"
* entry[composition].resource = Composition-uzplod-malikova

* entry[patient].fullUrl = "urn:uuid:a1f2e3d4-c5b6-4a78-9f01-2b3c4d5e6f70"
* entry[patient].resource = cz-patient-malikova

* entry[orderInformation].fullUrl = "urn:uuid:c3f4a5b6-e7d8-4c9a-8f23-4d5e6f7a8b92"
* entry[orderInformation].resource = cz-uzplod-screening

* entry[orderInformation][+].fullUrl = "urn:uuid:d4a5b6c7-f8e9-4dab-8f34-5e6f7a8b9ca3"
* entry[orderInformation][=].resource = cz-uzplod-foto-samoplatce

* entry[coverage].fullUrl = "urn:uuid:e5b6c7d8-a9fa-4ebc-8f45-6f7a8b9cadb4"
* entry[coverage].resource = cz-pojisteni-malikova

* entry[coverage][+].fullUrl = "urn:uuid:f6c7d8e9-bafb-4fcd-8f56-7a8b9cadbec5"
* entry[coverage][=].resource = cz-samoplatce-foto-malikova

* entry[condition].fullUrl = "urn:uuid:a7d8e9fa-cbfc-4ade-8f67-8b9cadbecfd6"
* entry[condition].resource = TehotenstviCondition

* entry[practitioner].fullUrl = "urn:uuid:b8e9fabc-dcfd-4bef-8f78-9cadbecfd0e7"
* entry[practitioner].resource = cz-practitioner-gynekolozka

* entry[practitionerRole].fullUrl = "urn:uuid:c9fabcde-edfe-4cfa-8f89-adbecfd0e1f8"
* entry[practitionerRole].resource = cz-practitionerRole-gynekologie-malikova

* entry[organisation].fullUrl = "urn:uuid:dafbcdef-feaf-4dab-8f9a-becfd0e1f2a9"
* entry[organisation].resource = cz-pojistovna-malikova-example


Instance: Composition-uzplod-malikova
InstanceOf: CZ_CompositionImageOrder
Description: "Request for ultrasound examination of the fetus (screening, covered by insurance) and standard 3D/4D photography of the fetus (paid by the patient)"
Title: "Composition: Ultrasound of the fetus (screening) + 3D/4D photography - Malíková"
Usage: #inline
* id = "b2e3f4a5-d6c7-4b89-8f12-3c4d5e6f7a81"
* status = #final
* subject = Reference(urn:uuid:a1f2e3d4-c5b6-4a78-9f01-2b3c4d5e6f70)
* date = "2026-08-31T10:30:00+02:00"
* author = Reference(urn:uuid:c9fabcde-edfe-4cfa-8f89-adbecfd0e1f8)
* title = "Žádanka o zobrazovací vyšetření - UZ plodu + nadstandardní 3D/4D fotografie"
* confidentiality = #N
* type = $sctCZ#721964003 "žádanka o vyšetření"
* category[documentCategory] = $loinc#57133-1 "Referral note"

* section[orderInformation].title = "Requested imaging studies information Document"
* section[orderInformation].code = $loinc#55115-0 "Requested imaging studies information Document"
* section[orderInformation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Požadovaná vyšetření: 1) screeningové UZ vyšetření plodu (hrazeno z veřejného zdravotního pojištění), 2) nadstandardní 3D/4D fotografie plodu na přání pacientky (hrazeno pacientkou).</div>"
* section[orderInformation].text.status = #generated
* section[orderInformation].entry[0] = Reference(urn:uuid:c3f4a5b6-e7d8-4c9a-8f23-4d5e6f7a8b92)
* section[orderInformation].entry[+] = Reference(urn:uuid:d4a5b6c7-f8e9-4dab-8f34-5e6f7a8b9ca3)

* section[clinicalQuestion].title = "Clinical question"
* section[clinicalQuestion].code = $loinc#18785-6 "Radiology Reason for study (narrative)"
* section[clinicalQuestion].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Klinická otázka: Screening II. trimestru gravidity (20+3 týdny) - biometrie plodu, morfologie, hodnocení placenty a plodové vody. Pacientka si dále přeje nadstandardní 3D/4D fotografii plodu jako upomínkovou fotografii (nejde o diagnostický výkon).</div>"
* section[clinicalQuestion].text.status = #additional

* section[coverage].title = "Coverage information"
* section[coverage].code = $loinc#87520-3 "Coverage information Document"
* section[coverage].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Dva způsoby úhrady: screeningové UZ vyšetření je hrazeno z veřejného zdravotního pojištění; nadstandardní 3D/4D fotografie je hrazena přímo pacientkou (samoplátce).</div>"
* section[coverage].text.status = #generated
* section[coverage].entry[0] = Reference(urn:uuid:e5b6c7d8-a9fa-4ebc-8f45-6f7a8b9cadb4)
* section[coverage].entry[+] = Reference(urn:uuid:f6c7d8e9-bafb-4fcd-8f56-7a8b9cadbec5)

Instance: cz-patient-malikova
InstanceOf: CZ_PatientCore
Title: "Patient: Petra Malíková"
Description: "Pregnant patient requesting screening ultrasound examination of the fetus"
Usage: #example
* id = "a1f2e3d4-c5b6-4a78-9f01-2b3c4d5e6f70"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"cs\" lang=\"cs\"><p><strong>Pacient:</strong> Malíková Petra</p><p><strong>Pohlaví:</strong> žena; <strong>datum narození:</strong> 10. 7. 1995</p></div>"
* identifier[CPOJ][+].system = "https://ncez.mzcr.cz/fhir/sid/cpoj"
* identifier[CPOJ][=].value = "9557101234"
* identifier[CPOJ][=].use = #official
* identifier[RID][+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID][=].value = "6314725980"
* identifier[RID][=].use = #official
* name.use = #usual
* name.family = "Malíková"
* name.given = "Petra"
* gender = #female
* birthDate = "1995-07-10"
* address[+].use = #home
* address[=].type = #physical
* address[=].text = "Jiráskova 88, 370 01 České Budějovice"
* address[=].line[+] = "Jiráskova 88"
* address[=].line[=].extension[streetName].valueString = "Jiráskova"
* address[=].line[=].extension[houseNumber].valueString = "88"
* address[=].city = "České Budějovice"
* address[=].postalCode = "37001"
* address[=].country = "CZ"
  * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"

Instance: cz-uzplod-screening
InstanceOf: CZ_ImagingOrderInformation
Usage: #inline
Title: "ServiceRequest: Screening ultrasound of the fetus (II. trimester)"
Description: "Screening ultrasound examination of the fetus in the second trimester (20+3 weeks gestation) - biometric measurements, morphological screening, placenta, amniotic fluid"
* id = "c3f4a5b6-e7d8-4c9a-8f23-4d5e6f7a8b92"
* identifier.system = "http://gynekologie-malikova.cz/ris-order"
* identifier[=].value = "2026-UZ-1102"
* status = #active
* intent = #order
* priority = #routine
* category = $sctCZ#363679005 //"zobrazování"
* subject = Reference(urn:uuid:a1f2e3d4-c5b6-4a78-9f01-2b3c4d5e6f70)
* insurance = Reference(urn:uuid:e5b6c7d8-a9fa-4ebc-8f45-6f7a8b9cadb4)
* bodySite = $sctCZ#55460000 //"struktura plodu"
* code.coding = $sctCZ#446208007 //"ultrazvukové screeningové vyšetření plodu"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"cs\" lang=\"cs\">Požadované vyšetření: Screeningové UZ vyšetření plodu, II. trimestr (20+3 týdny gravidity) - biometrie, morfologický screening, placenta, plodová voda. Hrazeno z veřejného zdravotního pojištění.</div>"
* authoredOn = "2026-08-31T10:30:00+02:00"
* reasonReference = Reference(urn:uuid:a7d8e9fa-cbfc-4ade-8f67-8b9cadbecfd6)
* requester = Reference(urn:uuid:b8e9fabc-dcfd-4bef-8f78-9cadbecfd0e7)
* orderDetail.coding[modality] = $dicom#US "Ultrasound"


Instance: cz-uzplod-foto-samoplatce
InstanceOf: CZ_ImagingOrderInformation
Usage: #inline
Title: "ServiceRequest: 3D/4D photography of the fetus (self-pay)"
Description: "Nadstandard 3D/4D photography of the fetus, requested by the patient, paid directly by the patient, not a diagnostic procedure."
* id = "d4a5b6c7-f8e9-4dab-8f34-5e6f7a8b9ca3"
* identifier.system = "http://gynekologie-malikova.cz/ris-order"
* identifier[=].value = "2026-UZ-1102-FOTO"
* status = #active
* intent = #order
* priority = #routine
* category = $sctCZ#363679005 //"zobrazování"
* subject = Reference(urn:uuid:a1f2e3d4-c5b6-4a78-9f01-2b3c4d5e6f70)
* insurance = Reference(urn:uuid:f6c7d8e9-bafb-4fcd-8f56-7a8b9cadbec5)
* bodySite = $sctCZ#88556005 "struktura plodu"
* code.text = "Nadstandardní 3D/4D fotografie plodu - upomínková služba na přání pacientky, hrazená přímo pacientkou, nejedná se o diagnostický výkon."
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"cs\" lang=\"cs\">Požadovaná služba: nadstandardní 3D/4D fotografie plodu pro rodiče, na přání pacientky, v návaznosti na screeningové UZ vyšetření. Hrazeno přímo pacientkou.</div>"
* authoredOn = "2026-08-31T10:30:00+02:00"
* reasonReference = Reference(urn:uuid:a7d8e9fa-cbfc-4ade-8f67-8b9cadbecfd6)
* requester = Reference(urn:uuid:b8e9fabc-dcfd-4bef-8f78-9cadbecfd0e7)
* orderDetail.coding[modality] = $dicom#US "Ultrasound"

Instance: TehotenstviCondition
InstanceOf: CZ_ConditionClinicalQuestion
Usage: #example
Description: "Pregnancy, 20+3 weeks gestation, indicated for second trimester screening."
Title: "Condition: Reason in code form"
* id = "a7d8e9fa-cbfc-4ade-8f67-8b9cadbecfd6"
* subject = Reference(urn:uuid:a1f2e3d4-c5b6-4a78-9f01-2b3c4d5e6f70)
* code.coding = $mkn10#Z34.9 "Dohled nad normální graviditou, neurčený"
* code.text = "Fyziologicky probíhající gravidita, gestační týden 20+3, indikován screening II. trimestru. Pacientka žádá zároveň nadstandardní 3D/4D fotografii plodu."

Instance: cz-practitioner-gynekolozka
InstanceOf: CZ_PractitionerCore
Title: "Practitioner: MUDr. Jana Veselá"
Description: "Gynecologist, author of the request"
Usage: #example
* id = "b8e9fabc-dcfd-4bef-8f78-9cadbecfd0e7"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "556677889"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Veselá"
* name.given = "Jana"
* gender = #female


Instance: cz-practitionerRole-gynekologie-malikova
InstanceOf: CZ_PractitionerRoleOrder
Title: "PractitionerRole: gynecology and obstetrics"
Description: "Role of gynecologist in the context of imaging order for patient Malíková"
Usage: #example
* id = "c9fabcde-edfe-4cfa-8f89-adbecfd0e1f8"
* specialty[0] = $vzp-odbornost#603 "Gynekologie a porodnictví"
* specialty[+] = $sctCZ#394586005 "gynekologie a porodnictví - specializace"
* practitioner = Reference(urn:uuid:b8e9fabc-dcfd-4bef-8f78-9cadbecfd0e7)
* organization = Reference(urn:uuid:dafbcdef-feaf-4dab-8f9a-becfd0e1f2a9)

Instance: cz-pojisteni-malikova
InstanceOf: CZ_Coverage
Description: "Coverage for patient Malíková, provided by VZP, covering the screening ultrasound examination of the fetus"
Usage: #example
Title: "Coverage: VZP"
* id = "e5b6c7d8-a9fa-4ebc-8f45-6f7a8b9cadb4"
* status = #active
* beneficiary = Reference(urn:uuid:a1f2e3d4-c5b6-4a78-9f01-2b3c4d5e6f70)
* payor = Reference(urn:uuid:dafbcdef-feaf-4dab-8f9a-becfd0e1f2a9)

Instance: cz-samoplatce-foto-malikova
InstanceOf: CZ_Coverage
Description: "Coverage for patient Malíková, self-pay for the non-standard 3D/4D photography of the fetus"
Usage: #example
Title: "Coverage: Self-pay for 3D/4D photography"
* id = "f6c7d8e9-bafb-4fcd-8f56-7a8b9cadbec5"
* status = #active
* beneficiary = Reference(urn:uuid:a1f2e3d4-c5b6-4a78-9f01-2b3c4d5e6f70)
* payor = Reference(urn:uuid:a1f2e3d4-c5b6-4a78-9f01-2b3c4d5e6f70)
* type = http://terminology.hl7.org/CodeSystem/coverage-selfpay#pay


Instance: cz-pojistovna-malikova-example
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "Organization providing healthcare insurance coverage for patient Malíková"
Title: "Organization: Healthcare insurance company"
* id = "dafbcdef-feaf-4dab-8f9a-becfd0e1f2a9"
* name = "Všeobecná zdravotní pojišťovna ČR"
* identifier[KP].system = "https://ncez.mzcr.cz/fhir/sid/kp"
* identifier[KP].value = "111"