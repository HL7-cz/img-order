Logical: LogEnClinicalEventCz
Id: ClinicalEventCz
Title: "A.2.3 - Clinical event (Encounter)"
Description: """Clinical event (Encounter) - Information about the clinical event to which the order relates"""

* insert SetFmmandStatusRule (2, trial-use)

* identifier 0..* Identifier "A.2.3.1 - Identifier of clinical event" """A unique, globally unique identifier of the clinical event to which the order relates."""
* type 0..* CodeableConcept "A.2.3.2 - Type of clinical event" """Type of clinical event according to the type code list. (e.g. hospitalization, outpatient visit, etc.)"""
* otherInformation 0..1 Base "A.2.3.3 - Other Information" """Type of services provided, period or duration of the clinical event, connection to other clinical events, etc."""
* otherInformation.serviceType 0..1 CodeableConcept "A.2.3.3.1 - Type of services" """Type of services provided within the clinical event."""
* otherInformation.period 0..1 Period "A.2.3.3.2 - Period" """Period of the clinical event (start and end)."""
* otherInformation.length 0..1 Duration "A.2.3.3.3 - Duration" """Duration of the clinical event."""
* otherInformation.relatedEvent 0..1 Identifier "A.2.3.3.4 - Related clinical event" """Identifier of the superordinate clinical event to which this clinical event is connected."""