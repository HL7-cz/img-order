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
* type.text = "Rentgen pacienta XY"