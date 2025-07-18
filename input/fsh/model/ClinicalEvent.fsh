Logical: LogEnClinicalEventCz
Id: ClinicalEventCz
Title: "A.2.3 - Clinical event (Encounter)"
Description: """Clinical event (Encounter) - Information about the clinical event to which the order relates"""

* insert SetFmmandStatusRule ( 0, draft )

* identifier 0..* Identifier "A.2.3.1 - Identifier of clinical event" """A unique, globally unique identifier of the clinical event to which the order relates."""
* type 0..* CodeableConcept "A.2.3.2 - Type of clinical event" """Type of clinical event according to the type code list. (e.g. hospitalization, outpatient visit, etc.)"""
* otherInformation 0..1 string "A.2.3.3 - Other Information" """Type of services provided, period or duration of the clinical event, connection to other clinical events, etc."""