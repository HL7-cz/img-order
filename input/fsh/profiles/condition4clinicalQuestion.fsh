Profile: CZ_ConditionClinicalQuestion
Parent: CZ_ConditionImage
Id: cz-conditionClinicalQuestion
Title: "Condition: Clinical question (CZ)"
Description: "Condition for purpose of clinical question in Imaging Order for the scope of the Czech national interoperability project."

* identifier
* subject only Reference(CZ_PatientCore or Group)
* category from $hl7-condition-category
* code.text 1..
* code.coding 0..
* code.coding from $sct-condition-code

* recorder only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore)
* asserter only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore)