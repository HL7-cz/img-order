Logical: LogEnBodyImageOrderCz
Id: BodyImageOrderCz
Title: "A.2 and A.3 - Body Imaging Order"
Description: """Body Imaging Order"""

* insert SetFmmandStatusRule ( 0, draft )

//common elements
* orderInformation 0..1 ImageOrderInformationCz "A.2.1 - Order and A.2.2 order reason"
* clinicalEvent 0..1 ClinicalEventCz "A.2.3 - Clinical Event" """Information about the clinical event to which the order relates"""
* coverage 1..* CoverageBodyCz "A.2.4 - Coverage" """Coverage information - Information about method of coverage, payer identification data and additional information"""
* appointment 0..1 ImageAppointmentCz "A.2.5 - Appointment" """Information about planned care order related to this request form"""
* specimenInformation 0..* SpecimenInformationCz "A.2.6 - Specimen information" """Information about specimen"""

//specific elements
* supportingInformation 1..1 ImageSupportingInformationCz "A.3.1 - Supporting Information" """Information and data communicated by the imaging methods department that has an impact on the execution of the order or the interpretation of the examination results"""
* orderDataElements 1..1 OrderDataElementsCz "A.3.2 - Order data elements" """Information about Required examinations (service request)"""
* plannedCareOrdersCz 0..1 PlannedCareOrdersCz "A.3.3 - Planned care orders" """Links to others planned care orders related to this request form"""
* otherSupportingInformationCz 0..* OtherSupportingInformationCz "A.3.4 - Other supporting information" """Links to other supporting information related to this request form"""
