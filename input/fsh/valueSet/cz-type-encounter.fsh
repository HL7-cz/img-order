ValueSet: TypeEncounterCzVs
Id: typeEncounter-cz-vs
Title: "TypeEncounter (CZ)"
Description: "Type encouter - Typ KU"
* ^language = #cs
//* ^identifier.system = "urn:ietf:rfc:3986"
//* ^identifier.value = "urn:oid:1.2.203.24341.11.1.7"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2024-01-01"
* ^publisher = "NCEZ"
* ^experimental = false
* ^url = "https://hl7.cz/fhir/img-order/ValueSet/typeEncounter-cz-vs"
* insert SetFmmandStatusRule(2, trial-use)

* include codes from system TypeEncounterCzCs