Profile: DataElementsImageOrderCz
Parent: ServiceRequest
Id: DataElementsImageOrderCz
Title: "Data elements about order: Imaging Order (CZ)"
Description: "Data elements used to represent a Imaging Order for the scope of the Czech national interoperability project."

* insert SetFmmandStatusRule ( 0, draft )
 
* identifier 1..
* category 1..
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