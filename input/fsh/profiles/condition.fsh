Profile: CZ_ConditionImage
Parent: Condition
Id: cz-conditionImage
Title: "Condition: Imaging Order (CZ)"
Description: "Condition for Imaging Order for the scope of the Czech national interoperability project."

* identifier
* subject only Reference(CZ_PatientCore or Group)
* category from $hl7-condition-category
* code MS
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[0].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains 
    diagnosis 0..1 and 
    condition 0..1 
* code.coding[diagnosis] from $mkn10vs
* code.coding[diagnosis].system = "https://terminology.uzis.cz/CodeSystem/Mkn10_5" 
* code.coding[condition] from $sct-condition-code
* code.coding[condition].system = "http://snomed.info/sct" (exactly)

* recorder only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore)
* asserter only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore)

