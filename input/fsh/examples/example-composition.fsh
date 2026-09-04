Instance: CompositionImagingOrderExample
InstanceOf: CZ_CompositionImageOrder
Usage: #example
Title: "Composition: Imaging Order"
Description: "Standalone example of an imaging order Composition."

* status = #final
* subject = Reference(Mracena)
* date = "2025-04-01T09:00:00+01:00"
* author = Reference(cz-practitionerRole-example)
* title = "Imaging Order – Magnetic Resonance"
* confidentiality = #N
* type = $sctCZ#721964003
* category[documentCategory] = $loinc#57133-1

* section[orderInformation].title = "Requested imaging studies information"
* section[orderInformation].code = $loinc#55115-0 "Requested imaging studies information Document"
* section[orderInformation].text.status = #generated
* section[orderInformation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Requested magnetic resonance examination</div>"
* section[orderInformation].entry = Reference(cz-imagingorder-example)
* section[coverage].title = "Coverage"
* section[coverage].code = $loinc#87520-3 //"Insurance information"
* section[coverage].text.status = #generated
* section[coverage].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient insurance information</div>"
* section[coverage].entry = Reference(cz-coverage-example)

* section[clinicalQuestion].title = "Clinical question"
* section[clinicalQuestion].code = $loinc#18785-6 "Radiology Reason for study (narrative)"
* section[clinicalQuestion].text.status = #additional
* section[clinicalQuestion].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Is there structural damage to the right knee?</div>"

Instance: cz-coverage-example
InstanceOf: CZ_Coverage
Usage: #example
Title: "Coverage: Patient insurance information"
Description: "Example of a patient's insurance coverage information."
* id = "coverage-example"
* status = #active
* beneficiary = Reference(Mracena)
* payor = Reference(insuranceCompanyExample)

Instance: insuranceCompanyExample
InstanceOf: CZ_OrganizationCore
Usage: #example
Title: "Organization: Example insurance company"
Description: "Example of an insurance company organization."
* id = "insurance-company-example"
* name = "Všeobecná zdravotní pojišťovna ČR"
* identifier[KP].system = "https://ncez.mzcr.cz/fhir/sid/kp"
* identifier[KP].value = "111"
