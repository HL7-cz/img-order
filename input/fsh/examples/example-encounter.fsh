Instance: cz-encounter-example
InstanceOf: CZ_Encounter
Usage: #example
Description: "Encounter"
* id = "db16a37b-d393-4767-bb2e-739f9bff16f9"
* identifier[+].system = "http://example.org/hospital"
* identifier[=].value = "ku-123456789"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* type.text = "Rentgen pacienta Králíka"
* serviceProvider = Reference(urn:uuid:5bdedd9b-27c5-4593-ae3a-968c5f25d253) // CZ_OrganizationWithLogo


Instance: cz-organizationwithlogo-example
InstanceOf: cz-organization-core
Usage: #example
Description: "An example of the organization with logo extension"
* id = "5bdedd9b-27c5-4593-ae3a-968c5f25d253"
* contained[+] = attachment-logo-FN-Motol  // Příklad přílohy s logem
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* identifier[=].value = "456789655"
* type[+] = $drzar#101 "Fakultní nemocnice"
* name = "Fakultní nemocnice Motol"
* telecom[0].system = #phone
* telecom[=].value = "+420257216007"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "+420257216007"
* telecom[=].use = #work

* address[+].use = #work
* address[=].type = #both
* address[=].text = "Plzeňská 951/125, 150 00 Praha 5"
* address[=].line[+] = "Plzeňská 951/125"
* address[=].line[=].extension[streetName].valueString = "Plzeňská"
* address[=].line[=].extension[houseNumber].valueString = "951/125"
* address[=].city = "Praha"
* address[=].postalCode = "15000"
* address[=].country = "CZ"
// Rozšíření organization-logo aliasované jako cz-organization-logo
* extension[logo].valueReference = Reference(logoFNMotol)