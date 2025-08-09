Profile: CZ_ObservationImage
Parent: Observation
Id: cz-observationImage
Title: "Observation: Imaging Order (CZ)"
Description: "Observation for Imaging Order for the scope of the Czech national interoperability project."

* identifier
* title
* category.coding.system
* category.coding.code
* code
* code.coding ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
* code.coding contains
    LOINC 0..1 and
    SNOMEDCT 0..1 and
    NCLP 0..1
 // NCLP OR NPU 0..1 and
* code.coding[LOINC] 
  * ^short = "LOINC code for the observation"
  * system 1..
  * system = "http://loinc.org" (exactly)
  * code 1..
* code.coding[SNOMEDCT]
  * ^short = "SNOMED CT code for the observation"
  * system 1..
  * system = "http://snomed.info/sct" (exactly)
  * code 1..
* code.coding[NCLP]
  * ^short = "NCLP code for the observation"
  * system 1..
  * system = "https://nclp.ncez.mzcr.cz/CodeSystem/NCLPPOL" (exactly)
  * code 1..
* valueQuantity
* valueCodeableConcept
* status
* effectiveDateTime
* performer
* performer.identifier
* performer.display
* note