Instance: ClinicalQuestionExample
InstanceOf: CZ_ConditionClinicalQuestion
Usage: #example
Title: "Condition: Clinical question for knee imaging"
Description: "Clinical question accompanying an imaging order for patient Mracena: assessment of structural damage to the right knee."

* language = #cs
* subject = Reference(Mracena)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code = $sctCZ#1003722009 // Pain of knee region (finding)
* code.text = "Bolest pravého kolene. Je přítomno strukturální poškození pravého kolene?"
* recordedDate = "2025-04-01"
* recorder = Reference(practitionerExample)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"cs\" lang=\"cs\">Bolest pravého kolene. Je přítomno strukturální poškození pravého kolene?</div>"
