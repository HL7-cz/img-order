Profile: CZ_PatientMobility
Parent: CZ_MedicalTestResultCore
Id: cz-patientMobility
Title: "Patient mobility: Imaging Order (CZ)"
Description: "Profile of patient mobility observation for the scope of the Czech national interoperability project."

* identifier
* title
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[0].path = "$this"
* category ^slicing.ordered = false
* category ^slicing.rules = #open
* category contains activity 1..1
* category[activity] = $hl7-observation-category-cs#activity
* code from CZ_MobilityTypeVs (required)
// * code.coding ^slicing.discriminator.type = #value
// * code.coding ^slicing.discriminator.path = "system"
// * code.coding ^slicing.rules = #closed
// * code.coding contains SNOMEDCT 1..1
// * code.coding[SNOMEDCT] 1..1
//   * ^short = "SNOMED CT code for the observation"
//   * system 1..
//   * system = $sct (exactly)
//   * version 1..1
//   * version = $sctCzEdition
//   * code from CZ_MobilityTypeVs (required)

* value[x] only CodeableConcept
* valueCodeableConcept from CZ_MobilityValueVs (required)
* effective[x] 1..1
* effective[x] only dateTime
* component 0..0
