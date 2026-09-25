Invariant: cz-clinical-question-code-or-text
Description: "A clinical question SHALL contain at least one coding or text."
Severity: #error
Expression: "code.coding.exists() or code.text.exists()"

Profile: CZ_ConditionClinicalQuestion
Parent: CZ_ConditionCore
Id: cz-conditionClinicalQuestion
Title: "Condition: Clinical question (CZ)"
Description: "Condition for purpose of clinical question in Imaging Order for the scope of the Czech national interoperability project."

* identifier
* subject only Reference(CZ_PatientCore)
* category from $hl7-condition-category
* code from $sct-condition-code (required)
//* obeys cz-clinical-question-code-or-text
// * code.text 1..
// * code.coding 0..
// * code.coding from $sct-condition-code

* recorder only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore)
* asserter only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore)
