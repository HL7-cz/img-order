Instance: EncounterExample
InstanceOf: CZ_Encounter
Usage: #example
Description: "Encounter"

* identifier[+].system = "https://homolka.cz/nis"
* identifier[=].value = "ku-123456789"
* type.coding.code = #KARD.EKG
* type.coding.system = "https://hl7.cz/fhir/img-order/CodeSystem/typeEncounter-cz-cs"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB