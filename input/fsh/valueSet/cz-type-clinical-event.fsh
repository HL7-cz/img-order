ValueSet: CZ_TypeClinicalEventVs
Id: cz-typeClinicalEvent-vs
Title: "Valueset of types Clinical event (CZ)"
Description: "Value Set Type clinical event - Typ KU"
* ^language = #cs
//* ^identifier.system = "urn:ietf:rfc:3986"
//* ^identifier.value = "urn:oid:1.2.203.24341.11.1.7"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2024-01-01"
* ^publisher = "NCEZ"
* ^experimental = false
* ^url = "https://hl7.cz/fhir/img-order/ValueSet/cz-typeClinicalEvent-vs"
* insert SetFmmandStatusRule(2, trial-use)

* include codes from system CZ_TypeClinicalEventCs