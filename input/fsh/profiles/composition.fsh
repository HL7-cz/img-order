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

* section MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
  * ^slicing.ordered = false
* section.entry MS
* section.code 1..1 MS  // LOINC code for the section
* section.title MS
* section.text MS
* section contains
    orderInformation 0..* MS and
    supportingInformation 1..1 MS and
    specimen 1..1 MS and
    dataElements 1..1 MS and
    coverage 0..* MS and
    appointment 0..1 MS

///////////////////////////////// ORDER INFORMATION SECTION ///////////////////////////////////////
* section[orderInformation]
  * ^short = "Order Information"
  * ^definition = "This section holds information related to the order for the imaging study."
  * code = $loinc#100828-3 "Portable medical order administrative information"

  * entry MS
    * insert SliceElement( #profile, "$this" )
  * entry contains 
      order 0..* MS and 
      orderReason 1..1 MS 
  
  * entry[order]
    * ^short = "Order reference"
    * ^definition = "This entry holds a reference to the order for the Imaging Order."
  * entry[order] only Reference(ImagingOrderInformationCz) 

  * entry[orderReason]
    * ^short = "Order Reason"
    * ^definition = "This entry holds a reference to order reason."
  * entry[orderReason] only Reference(ConditionImageCz)

///////////////////////////// SUPPORTING INFORMATION SECTION ////////////////////////////////////
* section[supportingInformation]
  * ^short = "Supporting Information"
  * ^definition = "This section holds additional clinical information about the patient or specimen that may influence the services or their interpretations. This information includes diagnosis, clinical findings and other observations."
  * code = $loinc#104987-3 "Supporting clinical information"
  
  * entry MS
    * insert SliceElement( #profile, "$this" )
  * entry contains 
      biometricData 1..1 MS and 
      weight 1..1 MS and 
      height 1..1 MS and 
      condition 0..1 MS and
      medication 0..1 MS and
      implants 0..* MS and
      urgentInformation 0..1 MS and
      observation 0..1 MS

  * entry[biometricData]
    * ^short = "Biometric data"
    * ^definition = "This entry holds a reference to the observation about Biometric data."
  * entry[biometricData] only Reference(Observation)  

  * entry[weight]
    * ^short = "Weight"
    * ^definition = "This entry represents information about subject's weight."
//    * code = http://loinc.org#29463-7
  * entry[weight] only Reference(Observation)  

  * entry[height]
    * ^short = "Height"
    * ^definition = "This entry represents information about subject's height."
//    * code = http://loinc.org#3138-5
  * entry[height] only Reference(Observation)  

  * entry[condition]
    * ^short = "Condition"
    * ^definition = "This entry holds a reference to the condition."
  * entry[condition] only Reference(Condition) 

  * entry[medication]
    * ^short = "Medication"
    * ^definition = "This entry holds a reference to the medication."
  * entry[medication] only Reference(CZ_MedicationStatement) 
 
  * entry[implants]
    * ^short = "Implants"
    * ^definition = "This entry holds a reference to the implant."
  * entry[implants] only Reference(CZ_MedicalDevice) 

  * entry[urgentInformation]
    * ^short = "Urgent information"
    * ^definition = "This entry holds a reference to the implant."
  * entry[urgentInformation] only Reference(AllergyIntolerance) 

  * entry[observation]
    * ^short = "Condition"
    * ^definition = "This entry holds a reference to the other observation."
  * entry[observation] only Reference(Observation) 

///////////////////////////////////// SPECIMEN SECTION //////////////////////////////////////////
* section[specimen]
  * ^short = "Specimen"
  * code = $loinc#31208-2 "Specimen"
  * entry MS
    * insert SliceElement( #profile, $this )
  * entry contains 
      Specimen 0..* MS
  * entry[Specimen] only Reference(CZ_Specimen)


//////////////////////////////// SERVICE REQUEST SECTION ////////////////////////////////////////
* section[dataElements]
  * ^short = "Data elements of Service Request"
  * code = $loinc#64286-8 "Diagnostic imaging order"
  * entry MS
    * insert SliceElement( #profile, $this )
  * entry only Reference(DataElementsImageOrderCz)

/////////////////////////////////// COVERAGE SECTION ////////////////////////////////////////////
* section[coverage]
  * ^short = "ServiceRequest"
  * entry MS
    * insert SliceElement( #profile, $this )
  * entry only Reference(CZ_Coverage)

/////////////////////////////////// APPOINTMENT SECTION /////////////////////////////////////////
* section[appointment]
  * ^short = "Appointment"
  * entry MS
    * insert SliceElement( #profile, $this )
  * entry only Reference(Appointment)