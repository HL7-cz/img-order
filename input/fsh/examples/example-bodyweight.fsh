Instance: ExampleBodyWeight
InstanceOf: CZ_Anthropometric_Test_Result
Usage: #example
Title: "Body weight: Patient Mracena"
Description: "Example of body weight of Patient Mracena"
* subject = Reference(Mracena)
* code.coding[SNOMEDCT] = $sctCZ#27113001
* code.coding[LOINC] = $loinc#29463-7
* valueQuantity.value = 65
* valueQuantity.unit = "kg"
* valueQuantity.system = $UCUM
* valueQuantity.code = #kg
* status = #final
* effectiveDateTime = 2020-06-01
* performer = Reference(practitionerExample)
