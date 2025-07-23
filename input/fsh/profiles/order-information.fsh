Profile: CZ_ImagingOrderInformation
Parent: ServiceRequest
Id: cz-imagingOrderInformation
Title: "Service Request: Imaging Order (CZ)"
Description: "Order information for the scope of the Czech national interoperability project."

* extension contains $service-request-body-structure-r5 named bodyStructure-R5 0..*
//* extension[bodyStructure-R5].extension[bodyStructure] ^short = "Body Structure"
* identifier 1..
* category 1..

* authoredOn 1..
* occurrenceDateTime
* priority
* patientInstruction

* subject only Reference(CZ_PatientCore)
* insurance only Reference(CZ_Coverage)
* specimen only Reference(CZ_Specimen)
* code
* code.coding from CZ_ImagingProcedureVs (preferred)

* performer only Reference(CZ_DeviceObserver)
* performer.type from $sct-device-type
* bodySite
* bodySite from $sctBodySite (preferred)
* text 1..
* supportingInfo 0..*
* supportingInfo only Reference(CZ_MedicationStatement or CZ_BodyHeight or CZ_BodyWeight or Condition or CZ_AllergyIntolerance or CZ_MedicalDevice or CZ_ObservationImage or CZ_CarePlanImage)
* reasonCode.coding ^slicing.discriminator[0].type = #value
* reasonCode.coding ^slicing.discriminator[0].path = "system"
* reasonCode.coding ^slicing.rules = #open
* reasonCode.coding contains
    diagnosis 0..1 and
    reason 0..1
* reasonCode.coding[diagnosis] from $mkn-10-problem-list (preferred)
* reasonCode.coding[diagnosis].system = $mkn-10
* reasonCode.coding[reason] from $sct-condition-code (preferred)
* reasonCode.coding[reason].system = "http://snomed.info/sct" (exactly)