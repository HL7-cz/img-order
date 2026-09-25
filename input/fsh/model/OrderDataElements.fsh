Logical: LogEnOrderDataElementsCz
Id: OrderDataElementsCz
Title: "A.3.2 - Order Data Elements"
Description: """Order Data Elements - Order/examination data elements """

*  requestedExamination 1..* Base "A.3.2.1 - Requested Examination" """Requested examination"""
*  requestedExamination.code 0..* CodeableConcept "A.3.2.1.1 - Examination code" """Code representing the examination within the agreed code list, including its name."""
*  requestedExamination.name 0..* string "A.3.2.1.2 - Name of the examination" """Full name of the examination, if different from the coded information."""
*  requestedExamination.modality 0..* CodeableConcept "A.3.2.1.3 - Modality" """Required examination method (measurement principle)."""
*  requestedExamination.bodyPart 0..* CodeableConcept "A.3.2.1.4 - Body Part" """Body part being examined"""
*  requestedExamination.laterality 0..* CodeableConcept "A.3.2.1.5 - Laterality" """Body side"""
*  requestedExamination.note 0..* string "A.3.2.1.6 - Note" """Customer's note on the requested examination"""
