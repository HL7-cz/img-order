Logical: LogEnOrderDataElementsCz
Id: OrderDataElementsCz
Title: "A.3.2 - Order Data Elements"
Description: """Order Data Elements - Order/examination data elements """

*  code 0..* CodeableConcept "A.3.2.1 - Examination code" """Code representing the examination within the agreed code list, including its name."""
*  name 0..* string "A.3.2.2 - Name of the examination" """Full name of the examination, if different from the coded information."""
*  modality 0..* CodeableConcept "A.3.2.3 - Modality" """Required examination method (measurement principle)."""
*  bodyPart 0..* CodeableConcept "A.3.2.4 - Body Part" """Body part being examined"""
*  laterality 0..* CodeableConcept "A.3.2.5 - Laterality" """Body side"""
*  note 0..* string "A.3.2.6 - Note" """Customer's note on the requested examination"""
