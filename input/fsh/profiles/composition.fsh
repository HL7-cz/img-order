//==========================
// PROFILE
//==========================
Profile: CompositionImageOrderCz
Parent: Composition
Id: CompositionImageOrderCz
Title: "Composition: Image Order (CZ)"
Description: "Clinical document used to represent a Image Order for the scope of this guide."
* ^purpose = "Image order bundle is an electronic health record extract containing results of imaging from a subject of care, comprising at least the required elements of the imaging dataset."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 CZ"
* . ^short = "Image Order Composition"
* . ^definition = "Image Order Composition. \r\n\r\n A composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

* insert SetFmmandStatusRule ( 0, draft )

* meta
  * security 0..* MS

* identifier
  * ^short = "Order identifier"
  * ^definition = "Identifiers assigned to this Imaging Order by the performer or other systems. It shall be common to several report versions"
  * ^comment = "Composition.identifier SHALL be equal to one of the OrderInformation.identifier, if at least one exists"

* status
  * ^short = "Status of the Order"
  * ^comment = ""

* subject 1..1 MS
* subject only Reference(CZ_PatientCore)

* custodian MS
* custodian only Reference(CZ_OrganizationCore)
  * ^short = "Organization that manages the Imaging Order"

* encounter MS
* encounter only Reference(Encounter)
  * ^short = "Context that defines the Imaging Order"
//  * insert SetPopulateIfKnown

* author MS
* author only Reference(CZ_PractitionerCore or CZ_DeviceObserver)
  * ^short = "Who and/or what authored the composition"

* date MS
  * ^short = "Date the order was created."

* section 1..
* obeys text-or-section

* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the Image Order"
* section ^definition = "The root of the sections that make up the Image Order composition."

* section contains
    orderInformation 1..* and
    specimen 0..1 and
    coverage 0..* and
    appointment 0..1 and
    carePlan 0..1 and
    medicalDevices 0..* and
    attachments 0..*

///////////////////////////////// ORDER INFORMATION SECTION ///////////////////////////////////////
* section[orderInformation]
  * ^short = "Order Information"
  * ^definition = "This section holds information related to the order for the imaging study."
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[0].valueString = "Section"
  * code = $loinc#55115-0 "Requested imaging studies information Document"
  * entry 0..
  * entry only Reference(ImagingOrderInformationCz or ConditionImageCz) 

///////////////////////////////////// SPECIMEN SECTION //////////////////////////////////////////
* section[specimen]
  * ^short = "Specimen-related information panel"
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[0].valueString = "Section"
  * code = $loinc#68992-7 "Specimen-related information panel"
  * entry 0..
  * entry only Reference(CZ_Specimen)


/////////////////////////////////// COVERAGE SECTION ////////////////////////////////////////////
* section[coverage]
  * ^short = "Coverage type"
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[0].valueString = "Section"
  * code = $loinc#87520-3 "Coverage type"
  * entry 0..
  * entry only Reference(CZ_Coverage)

/////////////////////////////////// APPOINTMENT SECTION /////////////////////////////////////////
* section[appointment]
  * ^short = "Appointment"
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[0].valueString = "Section"
  * code = $loinc#56446-8 "Appointment summary Document"
  * entry 0..
  * entry only Reference(AppointmentCz)

  /////////////////////////////////// CARE PLAN SECTION /////////////////////////////////////////
* section[carePlan]
  * ^short = "Care Plan"
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[0].valueString = "Section"
  * code = $loinc#18776-5 "Plan of care note"
  * entry 0..
  * entry only Reference(CarePlanImageCz)

 /////////////////////////////////// MEDICAL DEVICE SECTION /////////////////////////////////////////
* section[medicalDevices]
  * ^short = "Medical Devices and implants"
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[0].valueString = "Section"
  * code = $loinc#97813-0 "Implant component"
  * entry 0..
  * entry only Reference(DeviceUseStatementCz)

 /////////////////////////////////////// ATTACHMENTS SECTION /////////////////////////////////////////
// -------------------------------------------------------------
* section[attachments]
  * ^short = "Library of attachments"
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[0].valueString = "Section"
  * code = $loinc#77599-9 "Additional documentation"
  * entry 0..
  * entry only Reference(AttachmentCz)

/// ========= INVARIANTS =========

Invariant: text-or-section
Description: "A Composition SHALL have either text, at least one section, or both."
Expression: "text.exists() or section.exists()"
Severity: #error