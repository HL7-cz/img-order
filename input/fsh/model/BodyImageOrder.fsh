Logical: BodyImageOrderCz
Id: BodyImageOrderCz
Title: "A - Body Imaging Order"
Description: """Body Imaging Order"""

* insert SetFmmandStatusRule ( 0, draft )

//common elements
* OrderInformation 0..1 ImageOrderInformationCz "A.2.1 Order and A.2.2"
* Encounter 0..1 EncounterCz "A.2.3 Encounter" """Information about the clinical event to which the order relates"""
* Coverage 1..* CoverageBodyCz "A.2.4 Coverage" """Coverage information - Information about method of coverage, payer identification data and additional information"""
* Appointment 0..1 AppointmentCz "A.2.5 Appointment" """Links to planned care orders related to this request form"""
* Attachment 0..1 AttachmentCz "A.2.6 Attachment" """"""
* SpecimenInformation 0..* SpecimenInformationCz "A.2.7 Speciment information" """"""

//specific elements
* SupportingInformation 1..1 ImageSupportingInformationCz "A.3.1 - Supporting Information" """Information and data communicated by the imaging methods department that has an impact on the execution of the order or the interpretation of the examination results"""
* OrderDataElements 1..1 OrderDataElementsCz "A.3.2 - Order data elements" """Information about Required examinations (service request)"""
