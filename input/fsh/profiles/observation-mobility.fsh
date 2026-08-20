Profile: CZ_PatientMobility
Parent: CZ_ObservationImage
Id: cz-patientMobility
Title: "Patient mobility: Imaging Order (CZ)"
Description: "Profile of patient mobility observation for the scope of the Czech national interoperability project."

* identifier
* title
* category.coding.system
* category.coding.code
* code
* code.coding[SNOMEDCT] 1..1
  * ^short = "SNOMED CT code for the observation"
  * system 1..
  * system = $sct (exactly)
  * code 1..
  * code from CZ_MobilityTypeVs

* valueCodeableConcept 1..1
* valueCodeableConcept from CZ_MobilityValueVs
* valueQuantity 0..0
//* valueCodeableConcept.system = "http://snomed.info/sct" (exactly)
* effective[x] 1..1
* effective[x] only dateTime
