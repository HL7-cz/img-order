//===================================
/// INVARIANTS
//===================================

//Invariant: dr-comp-subj
//Description: "DiagnosticOrder and Composition SHALL have the same subject"
//Expression: "( (entry.resource.ofType(Composition).subject.empty() and entry.resource.ofType(DiagnosticOrder).subject.empty() ) or entry.resource.ofType(Composition).subject = entry.resource.ofType(DiagnosticOrder).subject )"
//Severity:    #error

Invariant: one-comp
Description: "A imaging order bundle SHALL include one and only one Composition"
Expression: "entry.resource.ofType(Composition).count() = 1"
Severity:    #error

//Invariant: one-do
//Description: "A imaging order SHALL include one and only one DiagnosticOrder"
//Expression: "entry.resource.ofType(DiagnosticOrder).count() = 1"
//Severity:    #error

//==========================
// PROFILE
//==========================
Profile: BundleImageOrderCz
Parent: Bundle
Id: BundleImageOrderCz
Title: "Bundle: Image Order (CZ)"
Description: "Clinical document used to represent a Image Order for the scope of this guide."
* ^purpose = "Image order bundle is an electronic health record extract containing results of imaging from a subject of care, comprising at least the required elements of the imaging dataset."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 CZ"
* . ^short = "Image Order Bundle"
* . ^definition = "Image Order Bundle. \r\nA container for a collection of resources in the inmaging order document."

* insert SetFmmandStatusRule ( 0, draft )

//* obeys dr-comp-subj
* obeys one-comp
//* obeys one-dr

* identifier ^short = "Business identifier for this Imaging order"
* identifier 1..
* type = #document
* timestamp 1..
* total ..0
* link ..0
* entry 1..
  * link ..0
  * fullUrl 1..1
  * resource 1..
  * search ..0
  * request ..0
  * response ..0
* signature ^short = "Digital Signature of this order"

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
// * entry ^slicing.ordered = true => changed on 2023-07-19  to be checked
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open

* entry contains composition 1..1
* entry[composition].resource only CompositionImageOrderCz

* entry contains orderInformation 0..*
* entry[orderInformation].resource only ImagingOrderInformationCz

* entry contains appointment 0..1
* entry[appointment].resource only AppointmentCz

* entry contains patient 0..1
* entry[patient].resource only CZ_PatientCore or CZ_PatientAnimal

* entry contains specimen 0..*
* entry[specimen].resource only CZ_Specimen

* entry contains organization 0..*
* entry[organization].resource only CZ_OrganizationCore

* entry contains practitioner 0..*
* entry[practitioner].resource only CZ_PractitionerCore

* entry contains practitionerRole 0..*
* entry[practitionerRole].resource only CZ_PractitionerRoleCore

* entry contains coverage 0..*
* entry[coverage].resource only CZ_Coverage

* entry contains medication 0..*
* entry[medication].resource only CZ_MedicationStatement  

* entry contains condition 0..*
* entry[condition].resource only ConditionImageCz

* entry contains allergyIntolerance 0..*
* entry[allergyIntolerance].resource only CZ_AllergyIntolerance

* entry contains carePlan 0..*
* entry[carePlan].resource only CarePlanImageCz

* entry contains observation 0..*
* entry[observation].resource only ObservationImageCz

* entry contains attachment 0..*
* entry[attachment].resource only AttachmentCz