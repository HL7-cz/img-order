Profile: CZ_ImagingOrderInformation
Parent: ServiceRequest
Id: cz-imagingOrderInformation
Title: "Service Request: Imaging Order (CZ)"
Description: "Order information for the scope of the Czech national interoperability project."

* identifier 1..
* category 1..

* extension contains $targetBodyStructure named bodySite 0..1
* extension[bodySite].valueReference only Reference(BodyStructureCzCore)

* authoredOn 1..
* occurrenceDateTime
* priority
* patientInstruction

* subject only Reference(CZ_PatientCore)
* insurance only Reference(CZ_Coverage)
* specimen only Reference(CZ_Specimen)
* code
* code.coding from CZ_ImagingProcedureVs (preferred)

* requester only Reference(CZ_PractitionerCore or CZ_PractitionerRoleOrder)  // omezení pouze na profil obsahující smluvní odbornost pracoviště VZP (pro případy úhrady z pojištění) nebo zdravotník
* performer only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CZ_PatientCore or CareTeam or HealthcareService or CZ_RelatedPersonCore or CZ_DeviceObserver)
//* performer.type from $sct-device-type  // performer type
* bodySite 0..1
* bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
* text 1..
* supportingInfo 0..*
* supportingInfo only Reference(CZ_MedicationStatementCore or CZ_ObservationImage or Condition or CZ_AllergyIntolerance or CZ_MedicalDevice or CZ_CarePlanCore)
* supportingInfo ^slicing.discriminator[0].type = #profile
* supportingInfo ^slicing.discriminator[0].path = "resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo contains
    bodyHeight 0..1 and
    bodyWeight 0..1 and
    mobility 0..1
* supportingInfo[bodyHeight] only Reference(CZ_BodyHeight)
* supportingInfo[bodyWeight] only Reference(CZ_BodyWeight)
* supportingInfo[mobility] only Reference(CZ_PatientMobility)
* reasonCode.coding ^slicing.discriminator[0].type = #value
* reasonCode.coding ^slicing.discriminator[0].path = "system"
* reasonCode.coding ^slicing.rules = #open
* reasonCode.coding contains
    mkn-10 0..1 and
    snomed 0..1 and
    orphacode 0..1
* reasonCode.coding[mkn-10] from $mkn10vs (preferred)
* reasonCode.coding[mkn-10].system = "https://uzis.cz/terminology/CodeSystem/mkn-10"
* reasonCode.coding[snomed] from $sct-condition-code (preferred)
* reasonCode.coding[snomed].system = "http://snomed.info/sct" (exactly)
* reasonCode.coding[orphacode] from $orphanet-vs (preferred)
* reasonCode.coding[orphacode].system = "https://www.orpha.net" (exactly)

* orderDetail.coding ^slicing.discriminator[0].type = #value
* orderDetail.coding ^slicing.discriminator[0].path = "system"
* orderDetail.coding ^slicing.rules = #open
* orderDetail.coding contains
    modality 1..*
* orderDetail.coding[modality] from CZ_ModalityVs (preferred)
* orderDetail.coding[modality].system = "http://dicom.nema.org/resources/ontology/DCM"