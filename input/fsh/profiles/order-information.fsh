Profile: ImagingOrderInformationCz
Parent: ServiceRequest
Id: ImagingOrderInformationCz
Title: "Order Information: Imaging Order (CZ)"
Description: "Order information for the scope of the Czech national interoperability project."

* identifier 1..
* authoredOn 1..
* occurrenceDateTime 
* priority
* note
* patientInstruction
* insurance only Reference(CoverageCz)
* reasonReference only Reference(ConditionImageCz)
* basedOn only Reference(DataElementsImageOrderCz)
