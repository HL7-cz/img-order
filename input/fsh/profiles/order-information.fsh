Profile: ImagingOrderInformationCz
Parent: ServiceRequest
Id: ImagingOrderInformationCz
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
* reasonReference only Reference(ConditionImageCz)

* code 
* code MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains 
    ImagingProcedure 0..1 and 
    Laterality 0..1 

* code.coding[ImagingProcedure] MS
* code.coding[ImagingProcedure] from CZImagingProcedure 
* code.coding[Laterality] MS
* code.coding[Laterality] from $czlaterality

* performer only Reference(CZ_DeviceObserver)
* performer.type from CZDicomMDLTY
* bodySite MS
* bodySite from $sctBodySite
* text 1..
* note 1..
* supportingInfo only Reference(CZ_MedicationStatement or CZ_AllergyIntolerance or CZ_MedicalDevice or Observation or DiagnosticReport)

