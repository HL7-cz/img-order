Profile: CZ_ImagingOrderInformation
Parent: ServiceRequest
Id: cz-imagingOrderInformation
Title: "Service Request: Imaging Order (CZ)"
Description: "Order information for the scope of the Czech national interoperability project."

* identifier 1..
* category 1..

* extension contains $bodySite-reference named bodySite 0..1
* extension[bodySite].valueReference only Reference(BodyStructureCz)

* authoredOn 1..
* occurrenceDateTime
* priority
* patientInstruction

* subject only Reference(CZ_PatientCore)
* insurance only Reference(CZ_Coverage)
* specimen only Reference(CZ_Specimen)
* code
* code.coding from CZ_ImagingProcedureVs (preferred)

* performer only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore
or CZ_OrganizationCore or CZ_PatientCore or CareTeam or HealthcareService or CZ_RelatedPersonCore or CZ_DeviceObserver)
* performer.type from $sct-device-type
* bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
* text 1..
* supportingInfo 0..*
* supportingInfo only Reference(CZ_MedicationStatement or CZ_BodyHeight or CZ_BodyWeight or Condition or CZ_AllergyIntolerance or CZ_MedicalDevice or CZ_ObservationImage or CZ_CarePlanImage)
* reasonCode.coding ^slicing.discriminator[0].type = #value
* reasonCode.coding ^slicing.discriminator[0].path = "system"
* reasonCode.coding ^slicing.rules = #open
* reasonCode.coding contains
    diagnosis 0..1 and
    reason 0..1
* reasonCode.coding[diagnosis] from $mkn10vs (preferred)
* reasonCode.coding[diagnosis].system = "https://terminology.uzis.cz/CodeSystem/Mkn10_5"
* reasonCode.coding[reason] from $sct-condition-code (preferred)
* reasonCode.coding[reason].system = "http://snomed.info/sct" (exactly)

* orderDetail.coding ^slicing.discriminator[0].type = #value
* orderDetail.coding ^slicing.discriminator[0].path = "system"
* orderDetail.coding ^slicing.rules = #open
* orderDetail.coding contains
    modality 1..*
* orderDetail.coding[modality] from CZ_ModalityVs (preferred)  
* orderDetail.coding[modality].system = $dicomwithoutversion