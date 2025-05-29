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
Profile: CZ_BundleImageOrder
Parent: Bundle
Id: cz-bundleImageOrder
Title: "Bundle: Imaging Order (CZ)"
Description: "Clinical document used to represent a Imaging Order for the scope of this guide."
* ^purpose = "Imaging order bundle is an electronic health record extract containing results of imaging from a subject of care, comprising at least the required elements of the imaging dataset."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 CZ"
* . ^short = "Imaging Order Bundle"
* . ^definition = "Imaging Order Bundle. \r\nA container for a collection of resources in the inmaging order document."

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
* signature only CZ_Signature

* entry 1..
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the Imaging order bundle"
* entry ^definition = "An entry resource included in the Imaging order document bundle resource."
* entry ^comment = "Must contain the Imaging Order Composition as the first entry (only a single Composition resource instance may be included).  Additional constraints are specified in the Imaging Order Composition profile."
* entry contains
    composition 1..1 and
    patient 1..1 and
    orderInformation 0..* and
    appointment 0..1 and
    specimen 0..* and
    practitionerRole 0..* and
    coverage 0..* and
    medication 0..* and
    condition 0..* and
    allergyIntolerance 0..* and
    carePlan 0..* and
    observation 0..* and
    attachment 0..*

* entry[composition].resource only CZ_CompositionImageOrder
* entry[patient].resource only CZ_PatientCore or CZ_PatientAnimal
* entry[orderInformation].resource only CZ_ImagingOrderInformation
* entry[appointment].resource only CZ_Appointment
* entry[specimen].resource only CZ_Specimen
* entry[practitionerRole].resource only CZ_PractitionerRoleCore
* entry[coverage].resource only CZ_Coverage
* entry[medication].resource only CZ_MedicationStatement  
* entry[condition].resource only CZ_ConditionImage
* entry[allergyIntolerance].resource only CZ_AllergyIntolerance
* entry[carePlan].resource only CZ_CarePlanImage
* entry[observation].resource only CZ_ObservationImage
* entry[attachment].resource only CZ_Attachment

* signature ^short = "Report Digital Signature"
  * type ^short = "Digital Signature Purposes"
  * when ^short = "When was signed"
  * who ^short = "Who signed."
  * data ^short = "Signature content"