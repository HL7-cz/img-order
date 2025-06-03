Profile: CZ_ImagingOrderInformation
Parent: ServiceRequest
Id: cz-imagingOrderInformation
Title: "Order Information: Imaging Order (CZ)"
Description: "Order information for the scope of the Czech national interoperability project."

* identifier 1..
* category 1..

* authoredOn 1..
* occurrenceDateTime 
* priority
* patientInstruction

* subject only Reference(CZ_PatientCore)
* insurance only Reference(CZ_Coverage)
* reasonReference only Reference(CZ_ConditionImage)

* code 
* code MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains 
    ImagingProcedure 0..1 and 
    Laterality 0..1 

* code.coding[ImagingProcedure]
* code.coding[ImagingProcedure] from CZ_ImagingProcedureVs 
* code.coding[Laterality]
* code.coding[Laterality] from $czlaterality

* performer only Reference(CZ_DeviceObserver)
* performer.type from $sct-device-type
* bodySite
* bodySite from $sctBodySite (preferred)
* text 1..
* supportingInfo 0..*
* supportingInfo only Reference(CZ_MedicationStatement or CZ_BodyHeight or CZ_BodyWeight or CZ_ConditionImage or CZ_AllergyIntolerance or CZ_MedicalDevice or CZ_ObservationImage or CZ_CarePlanImage)

