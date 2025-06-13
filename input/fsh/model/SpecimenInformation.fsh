Logical: SpecimenInformationCz				
Id: SpecimenInformationCz
Title: "A.2.6 - Specimen Information"				
Description:  """Information about specimen"""

* insert SetFmmandStatusRule( 1, draft)	

* identifier 1..* Identifier "A.2.6.1 - Sample identifier" """An identifier of the specimen which is unique within in a defined scope. Example: identifier assigned by Specimening system, identifier assigned by laboratory etc. Multiple identifiers can be used."""
* species 0..1 CodeableConcept "A.2.6.2 - Type of species" """Biologic type of species for laboratory result reports bound to non-human subjects. 
- Preferred system(s): SNOMED CT"""
* material 0..1 CodeableConcept "A.2.6.3 - Material" """Specimen material. 
- Preferred system(s): SNOMED CT
- Preferred system(s): NCLPMAT"""
* collectionDate 1..1 dateTime "A.2.6.4 - Date and time of collection or end of collection and time of collection" """The date and time of collection, or the time of completion of collection and the time of collection of the material."""
* transportDate 0..1 dateTime "A.2.6.5 - Date and time of commencement of transport of the sample to the laboratory" """Date and time of commencement of transport of the sample to the laboratory"""
* type 0..1 CodeableConcept "A.2.6.6 - Sample type" """Entities collected for examination.
- Preferred system(s): SNOMED CT"""
* anatomicLocation 0..1 CodeableConcept "A.2.6.7 - Anatomic location" """Anatomic location (body location, laterality) where the material is collected, e.g. Elbow, left 
- Preferred system(s): SNOMED CT"""
* morphology 0..1 CodeableConcept "A.2.6.8 - Morphology" """Morphological abnormalities of the anatomical location where the material is taken, for example wound, ulcer. 
- Preferred system(s): SNOMED CT"""
* instrument 0..1 CodeableConcept "A.2.6.9 - Instrument" """Device, instrument, physical object (drain, electrode, catheter, etc.).
- Preferred system(s): SNOMED CT"""
* procedure 0..1 CodeableConcept "A.2.6.10 - Collection procedure" """Sampling procedure - for cases where it is relevant to the results.
- Preferred system(s): SNOMED CT"""
* sourceDevice 0..1 CodeableConcept "A.2.6.11 - Source Device" """If the material is not collected directly from the patient but comes from a patient-related object, e.g. a catheter
 - Preferred system(s): SNOMED CT
 - Preferred system(s): EMDN"""
* samplingPoint 0..1 CodeableConcept "A.2.6.12 - Sampling point" """The area where the material was collected; refers to the environment, not the patient.
 - Preferred system(s): SNOMED CT (environment)"""
* note 0..1 string "A.2.6.13 - Note" """Note on the material in free text"""

* container 0..* BackboneElement "A.2.6.14 - Container" """"""
* container.type 0..1 CodeableConcept "A.2.6.14.1 - Type" """Type of sampling container - tube, sampling bag, etc. including chemical additives.
 - Preferred system(s): SNOMED CT
 - Preferred system(s): NCLPONP"""
* container.specimenQuantity 0..1 integer "A.2.6.14.2 - Specimen Quantity" """Quantity of specimen within container"""
* container.deviceId 1..1 Identifier "A.2.6.14.3 - Device Id" """Unique machine-readable container identifier.
 - Preferred system(s): UDI"""
* container.label 0..1 Identifier "A.2.6.14.4 - Label" """Human readable container identifier."""

* additionalData 0..1 BackboneElement "A.2.6.15 - Additional formalised sample data" """ """
* additionalData.date 0..1 date "A.2.6.15.1 - Date" """Date of discovery of the data, to be indicated if different from the date of the order."""
* additionalData.code 1..1 CodeableConcept "A.2.6.15.2 - Code" """Observation code identifying the significance of the data (collection time interval, volume of material collected; density; condition of material, type of collection, etc.)
 - Preferred system(s): NČLPPOL (valueset https://www.dastacr.cz/dasta/hypertext/_TRIDAK_202503012241ISLOD.htm)"""
* additionalData.value 0..1 Narrative "A.2.6.15.3 - Data value" """Data value including unit of measurement."""

* collector 0..1 BackboneElement "A.2.6.16 - Collector" """"""
* collector.identifier 1..* Identifier "A.2.6.16.1 - Identifier of the sample collector" """Identifier of the sample collector – this refers either to an internal identifier assigned by the healthcare provider or (preferably) a national ID of the healthcare professional, such as a license or registration number. If the sample is not collected by a healthcare professional but, for example, by the patient themselves, an appropriate personal identifier should be used instead."""
* collector.name 1..1 HumanName "A.2.6.16.2 - Name of the sample collector" """Name of the sample collector"""
* collector.contact 1..1 ContactPoint "A.2.6.16.3 - Contact information of the sample collector" """Contact information of the sample collector (address and telecommunication data)."""
* collector.organization 0..1 Organization "A.2.6.16.4 - Organization of the sample collector" """Organization of the sample collector (healthcare provider)."""
