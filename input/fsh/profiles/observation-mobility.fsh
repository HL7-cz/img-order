Profile: CZ_PatientMobility
Parent: Observation
Id: cz-potientMobility
Title: "Patient mobility: Imaging Order (CZ)"
Description: "Profile of patient mobility observation for the scope of the Czech national interoperability project."

* identifier
* title
* category.coding.system
* category.coding.code
* code
* code.coding ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
* code.coding contains
    SNOMEDCT 0..1

* code.coding[SNOMEDCT]
  * ^short = "SNOMED CT code for the observation"
  * system 1..
  * system = $sct (exactly)
  * code 1..
  * code from CZ_MobilityTypeVs

* valueCodeableConcept
* valueCodeableConcept from CZ_MobilityValueVs
//* valueCodeableConcept.system = "http://snomed.info/sct" (exactly)
* effective[x] 1..1
* effective[x] only dateTime