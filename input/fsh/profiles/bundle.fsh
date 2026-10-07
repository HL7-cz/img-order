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

Invariant: insurance-requester
Description: "For every imaging order covered by public health insurance, the ServiceRequest requester, or the Composition author when requester is absent, SHALL have an ICP organization identifier and a contractual specialty."
Severity: #error
Expression: "entry.resource.ofType(ServiceRequest).all(
    insurance.resolve().ofType(Coverage)
      .type.coding.where(
        system = 'http://terminology.hl7.org/CodeSystem/v3-ActCode'
        and code = 'HIP'
      ).exists()
    implies
    (
      (
        requester.exists()
        and
        requester.resolve().ofType(PractitionerRole)
          .where(
            organization.resolve().ofType(Organization)
              .identifier.where(
                system = 'https://ncez.mzcr.cz/fhir/sid/icp'
                and value.exists()
              ).exists()
            and
            specialty.coding.where(
              system = 'https://ncez.mzcr.cz/terminology/CodeSystem/vzp-smluvni-odbornost'
              and code.exists()
            ).exists()
          ).exists()
      )
      or
      (
        requester.empty()
        and
        %resource.entry.resource.ofType(Composition)
          .author.resolve().ofType(PractitionerRole)
          .where(
            organization.resolve().ofType(Organization)
              .identifier.where(
                system = 'https://ncez.mzcr.cz/fhir/sid/icp'
                and value.exists()
              ).exists()
            and
            specialty.coding.where(
              system = 'https://ncez.mzcr.cz/terminology/CodeSystem/vzp-smluvni-odbornost'
              and code.exists()
            ).exists()
          ).exists()
      )
    )
  )"

// Invariant: insurance-performer
// Description: "For every imaging order covered by public health insurance, at least one ServiceRequest performer SHALL have a contractual specialty filled."
// Severity: #error
// Expression: "entry.resource.ofType(ServiceRequest).all(
//     insurance.resolve().ofType(Coverage)
//       .type.coding.where(
//         system = 'http://terminology.hl7.org/CodeSystem/v3-ActCode'
//         and code = 'HIP'
//       ).exists()
//     implies
//     performer.resolve().ofType(PractitionerRole)
//       .where(
//         specialty.coding.where(
//           system = 'https://ncez.mzcr.cz/terminology/CodeSystem/vzp-smluvni-odbornost'
//           and code.exists()
//         ).exists()
//       ).exists()
//   )"


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

* insert SetFmmandStatusRule (2, trial-use)

//* obeys dr-comp-subj
* obeys one-comp
* obeys same-servicerequest-performer
* obeys same-servicerequest-occurrence
* obeys insurance-requester
//* obeys insurance-performer  // not necessary
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
    coverage 1..* and
    serviceRequest 0..* and
    bodyStructure 0..* and
    appointment 0..* and
    specimen 0..* and
    practitioner 0..* and
    practitionerRole 0..* and
    medication 0..* and
    medicationStatement 0..* and
    medicationAdministration 0..* and
    immunization 0..* and
    condition 0..* and
    allergyIntolerance 0..* and
    flag 0..* and
    carePlan 0..* and
    goal 0..* and
    observation 0..* and
    deviceUse 0..* and
    device 0..* and
    attachment 0..* and
    organisation 0..* and
    location 0..* and
    encounter 0..* and
    diagnosticReport 0..* and
    relatedPerson 0..* and
    provenance 0..*

* entry[composition].resource only CZ_CompositionImageOrder
* entry[patient].resource only CZ_PatientCore or CZ_PatientAnimal
* entry[coverage].resource only CZ_CoverageOrder
* entry[serviceRequest].resource only CZ_ImagingOrderInformation
* entry[bodyStructure].resource only BodyStructureCzCore
* entry[appointment].resource only CZ_AppointmentCore
* entry[specimen].resource only CZ_Specimen
* entry[practitioner].resource only CZ_PractitionerCore
* entry[practitionerRole].resource only CZ_PractitionerRoleCore
* entry[medication].resource only CZ_MedicationCore
* entry[medicationStatement].resource only CZ_MedicationStatementCore
* entry[medicationAdministration].resource only CZ_MedicationAdministrationCore
* entry[immunization].resource only CZ_ImmunizationCore
* entry[condition].resource only CZ_ConditionCore
* entry[allergyIntolerance].resource only CZ_AllergyIntolerance
* entry[flag].resource only CZ_FlagPatientCore
* entry[carePlan].resource only CZ_CarePlanCore
* entry[observation].resource only CZ_MedicalTestResultCore
* entry[goal].resource only Goal
* entry[deviceUse].resource only CZ_DeviceUseStatementCore
* entry[device].resource only CZ_MedicalDevice or CZ_DeviceObserver
* entry[attachment].resource only DocumentReference
* entry[organisation].resource only CZ_OrganizationCore
* entry[location].resource only CZ_LocationCore
* entry[encounter].resource only CZ_EncounterCore
* entry[diagnosticReport].resource only CZ_DiagnosticReportCore
* entry[relatedPerson].resource only CZ_RelatedPersonCore
* entry[provenance].resource only CZ_Provenance
* entry[provenance] ^short = "Provenance and signatures for resources in the document"
* entry[provenance] ^definition = "Provenance resources recording the origin and signatures of document resources. Provenance.target identifies the signed resources; the Composition does not reference Provenance through a signature section."

