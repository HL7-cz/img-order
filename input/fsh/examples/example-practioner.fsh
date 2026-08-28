Instance: practitionerExample
InstanceOf: CZ_PractitionerCore
Title: "Practitioner: doc. MUDr. Jan Testovací, PhD."
Description: "Example of practitioner"
Usage: #example
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "123456786"
* name.use = #usual
* name.prefix = "doc. MUDr."
* name.family = "Jan"
* name.given = "Testovací"
* name.suffix = "PhD."
* gender = #male

Instance: cz-practitionerRole-example
InstanceOf: CZ_PractitionerRoleOrder
Title: "PractitionerRole: Radiology"
Description: "Context of the practice site of the referring radiologist"
Usage: #example
* specialty = $vzp-odbornost#401 //"Radiodiagnostika"
* specialty[+] = $sctCZ#394588006 //"radiodiagnostika - specializace"
* practitioner = Reference(practitionerExample)
* organization = Reference(organizationExample)

Instance: organizationExample
InstanceOf: CZ_OrganizationCore
Title: "Organization: Example radiology clinic"
Description: "Example of an organization"
Usage: #example
* name = "Radiologická klinika, s.r.o."
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/icp"
* identifier[=].value = "456789666"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* identifier[=].value = "456789688"
