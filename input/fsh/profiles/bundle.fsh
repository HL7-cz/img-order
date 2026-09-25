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

Invariant: same-servicerequest-performer
Description: "Service requests SHOULD have the same performer."
Expression: "entry.resource.ofType(ServiceRequest).performer.reference.distinct().count() <= 1"
Severity: #warning

Invariant: same-servicerequest-occurrence
Description: "Service requests SHOULD have the same occurrence (dateTime or period)."
Expression: "entry.resource.ofType(ServiceRequest).occurrence.distinct().count() <= 1"
Severity: #warning

// Invariant: coverage-author
// Description: "If coverage is an insurance company than the author must have filled organization.identifier of type icp and specialty."
// Expression: "entry.resource.ofType(Coverage).payor.resolve().ofType(Organization).identifier.where($this.system = 'https://ncez.mzcr.cz/fhir/sid/kp') implies (entry.resource.ofType(Composition).author.resolve().ofType(PractitionerRole).specialty.exists() and entry.resource.ofType(Composition).author.resolve().ofType(PractitionerRole).organization.resolve().ofType(Organization).identifier.where($this.system = 'https://ncez.mzcr.cz/fhir/sid/icp'))"
// Expression: "
//   entry.resource.ofType(Coverage)
//     .where(
//       payor.resolve().ofType(Organization)
//         .identifier.where(
//           system = 'https://ncez.mzcr.cz/fhir/sid/kp'
//         ).exists()
//     ).exists()
//   implies
//   entry.resource.ofType(Composition)
//     .author.resolve().ofType(PractitionerRole)
//     .where(
//       specialty.exists() and
//       organization.resolve().ofType(Organization)
//         .identifier.where(
//           system = 'https://ncez.mzcr.cz/fhir/sid/icp'
//         ).exists()
//     ).exists()
// "
// Severity: #error

Invariant: insurance-requester
Description: "For every imaging order covered by health insurance, either the ServiceRequest requester or the Composition author SHALL have an ICP organization identifier and a contractual specialty."
Severity: #error
Expression: "
  entry.resource.ofType(ServiceRequest).all(
    insurance.resolve().ofType(Coverage)
      .payor.resolve().ofType(Organization)
      .identifier.where(
        system = 'https://ncez.mzcr.cz/fhir/sid/kp'
      ).exists()
    implies
    (
      requester.resolve()
      |
      %resource.entry.resource.ofType(Composition).author.resolve()
    )
    .ofType(PractitionerRole)
    .where(
      organization.resolve().ofType(Organization)
        .identifier.where(
          system = 'https://ncez.mzcr.cz/fhir/sid/icp'
        ).exists()
      and
      specialty.coding.where(
        system = 'https://ncez.mzcr.cz/terminology/CodeSystem/vzp-smluvni-odbornost'
        and code.exists()
      ).exists()
    )
    .exists()
  )
"


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
* . ^definition = "Imaging Order Bundle. \r\nA container for a collection of resources in the imaging order document."

* insert SetFmmandStatusRule ( 0, draft )

//* obeys dr-comp-subj
* obeys one-comp
* obeys same-servicerequest-performer
* obeys same-servicerequest-occurrence
* obeys insurance-requester
//* obeys one-dr

* identifier 1..1
* identifier ^short = "Business identifier for this Imaging order"
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

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the Imaging order bundle"
* entry ^definition = "An entry resource included in the Imaging order document bundle resource."
* entry ^comment = "Must contain the Imaging Order Composition as the first entry (only a single Composition resource instance may be included).  Additional constraints are specified in the Imaging Order Composition profile."
* entry.resource 1..
* entry contains
    composition 1..1 and
    patient 1..1 and
    orderInformation 0..* and
    appointment 0..1 and
    specimen 0..* and
    practitioner 0..* and
    practitionerRole 0..* and
    coverage 1..* and
    medication 0..* and
    condition 0..* and
    allergyIntolerance 0..* and
    carePlan 0..* and
    observation 0..* and
    deviceUse 0..* and
    device 0..* and
    attachment 0..* and
    organisation 0..* and
    encounter 0..*

* entry[composition].resource only CZ_CompositionImageOrder
* entry[patient].resource only CZ_PatientCore or CZ_PatientAnimal
* entry[orderInformation].resource only CZ_ImagingOrderInformation
* entry[appointment].resource only CZ_AppointmentCore
* entry[specimen].resource only CZ_Specimen
* entry[practitioner].resource only CZ_PractitionerCore
* entry[practitionerRole].resource only CZ_PractitionerRoleCore
* entry[coverage].resource only CZ_Coverage
* entry[medication].resource only CZ_MedicationStatementCore
* entry[condition].resource only CZ_ConditionCore
* entry[allergyIntolerance].resource only CZ_AllergyIntolerance
* entry[carePlan].resource only CZ_CarePlanCore
* entry[observation].resource only CZ_MedicalTestResultCore
* entry[deviceUse].resource only CZ_DeviceUseStatement
* entry[device].resource only Device
* entry[attachment].resource only DocumentReference
* entry[organisation].resource only CZ_OrganizationCore
* entry[encounter].resource only CZ_EncounterCore
