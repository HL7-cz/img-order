Profile: CZ_ImagingOrderInformation
Parent: ServiceRequest
Id: cz-imagingOrderInformation
Title: "Service Request: Imaging Order (CZ)"
Description: "Order information for the scope of the Czech national interoperability project."

* identifier 0..
* identifier
  * insert SliceElement( #value, type )
* identifier contains accessionNumber 0..1
* identifier[accessionNumber] only CZ_AccessionNumberIdentifier
* identifier[accessionNumber].type = $v2-0203#ACSN

* basedOn only Reference(CZ_CarePlanCore or CZ_ImagingOrderInformation or ServiceRequest or CZ_MedicationRequestCore)
* replaces only Reference(CZ_ImagingOrderInformation or ServiceRequest)

* category 1..*
  * insert SliceElement( #value, $this )
* category contains imaging 1..1
* category[imaging] = $sct#363679005 // "Imaging"

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

* requester only Reference(CZ_PractitionerRoleOrder or CZ_PractitionerRoleCore)

* performer only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CZ_PatientCore or CareTeam or HealthcareService or CZ_RelatedPersonCore or CZ_DeviceObserver)
//* performer.type from $sct-device-type  // performer type
* bodySite 0..1
* bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
* text 1..
* supportingInfo 0..*
* supportingInfo only Reference(CZ_MedicationStatementCore or CZ_MedicationAdministrationCore or CZ_ImmunizationCore or CZ_ObservationImage or Condition or CZ_AllergyIntolerance or CZ_MedicalDevice or CZ_CarePlanCore or Goal)
* supportingInfo ^slicing.discriminator[0].type = #profile
* supportingInfo ^slicing.discriminator[0].path = "resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo contains
    anthropometric 0..* and
    mobility 0..1
* supportingInfo[anthropometric] only Reference(CZ_Anthropometric_Test_Result)
* supportingInfo[mobility] only Reference(CZ_PatientMobility)
* reasonCode 1..*
* reasonCode.coding 1..*
* reasonCode.coding ^slicing.discriminator[0].type = #value
* reasonCode.coding ^slicing.discriminator[0].path = "system"
* reasonCode.coding ^slicing.rules = #closed
* reasonCode.coding contains
    mkn-10 0..1 and
    snomed 0..1 and
    orphacode 0..1
* reasonCode.coding[mkn-10] from $mkn10vs (required)
* reasonCode.coding[mkn-10].system = "https://uzis.cz/terminology/CodeSystem/mkn-10" (exactly)
* reasonCode.coding[snomed] from $sct-condition-code (required)
* reasonCode.coding[snomed].system = "http://snomed.info/sct" (exactly)
* reasonCode.coding[orphacode] from $orphanet-vs (required)
* reasonCode.coding[orphacode].system = "https://www.orpha.net" (exactly)

* orderDetail.coding ^slicing.discriminator[0].type = #value
* orderDetail.coding ^slicing.discriminator[0].path = "system"
* orderDetail.coding ^slicing.rules = #open
* orderDetail.coding contains
    modality 1..*
* orderDetail.coding[modality] from CZ_ModalityVs (preferred)
* orderDetail.coding[modality].system = "http://dicom.nema.org/resources/ontology/DCM"

Profile: CZ_AccessionNumberIdentifier
Parent: Identifier
Id: cz-accession-number-identifier
Title: "Imaging Accession Number Identifier"
Description: "This profile on Identifier represents the Accession Number for the Imaging Order."
* insert ImposeProfile($AccessionNumberIdentifier-eu-img,0)
* system 1..1
* value 1..1
* type 1..1
* type
  * coding
    * insert SliceElement( #value, $this )
  * coding contains v2-0203-coding 1..1 and dcm 0..1
  * coding[v2-0203-coding] = $v2-0203#ACSN
  * coding[dcm] = http://dicom.nema.org/resources/ontology/DCM#121022 "Accession Number"
