Instance: ExamplePatientMobility
InstanceOf: CZ_PatientMobility
Usage: #example
Title: "Patient mobility: example"
Description: "Example of the mobility of Patient Mracena."

* subject = Reference(Mracena)
* category[activity].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[activity].coding.code = #activity
* code = $sctCZ#710828008
* valueCodeableConcept = $sctCZ#282147000
* status = #final
* effectiveDateTime = 2025-04-01
* performer = Reference(practitionerExample)
