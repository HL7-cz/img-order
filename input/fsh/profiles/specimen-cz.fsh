Profile: SpecimenImageCz
Parent: Specimen
Id: SpecimenImageCz
Title: "Specimen: Imaging Order (CZ)"
Description: "Czech profile for a specimen in a imaging order. In some imaging order, specimen information is allowed to be minimal as many informations concerning the specimen are implied by the observations done."

* insert SetFmmandStatusRule ( 0, draft )

* text.status = #empty
* identifier MS
* identifier ^definition = "Business identifier for specimen is RECOMMENDED to include when available."
* status MS
* type MS
* type ^definition = "The kind of material that forms the specimen. RECOMMENDED to include."
* subject only Reference(Group or Device or CZ_MedicalDevice or Substance or Location or CZ_PatientCore)
* subject MS
* subject ^short = "In the initial iteration of the Czech interoperability project, this is CZ_PatientCore."
* receivedTime MS
* parent only Reference(SpecimenImageCz)
* parent MS
* request MS
* collection MS
* collection.collected[x] ^mustSupport = false
* collection.duration ^mustSupport = false
* collection.quantity ^mustSupport = false
* collection.method ^mustSupport = false
* collection.bodySite ^mustSupport = false
* collection.fastingStatus[x] ^mustSupport = false
* processing ^short = "Processing and processing step details to include when not implicit from specimen."
* container MS
* container.identifier MS
* container.type MS
* condition MS
* note MS