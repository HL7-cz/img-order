Profile: ConditionImageCz
Parent: Condition
Id: ConditionImageCz
Title: "Condition: Imaging Order (CZ)"
Description: "Condition for Imaging Order for the scope of the Czech national interoperability project."

* identifier
* subject
* category from $hl7-condition-category
* code MS
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[0].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains 
    diagnosis 0..1 and 
    reason 0..1 
* code.coding[diagnosis] from $mkn-10-problem-list
* code.coding[diagnosis].system = $mkn-10 
* code.coding[reason] from $sct-condition-code
* code.coding[reason].system = "http://snomed.info/sct" (exactly)

