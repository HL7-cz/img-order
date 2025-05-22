Profile: ConditionImageCz
Parent: Condition
Id: ConditionImageCz
Title: "Condition: Imaging Order (CZ)"
Description: "Condition for Imaging Order for the scope of the Czech national interoperability project."

* identifier
* subject
* code MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "display"
* code.coding ^slicing.rules = #open
* code.coding contains 
    codeDescription 0..1 and 
    clinicalQuestion 0..1 and 
    reason 0..1 
* code.coding[codeDescription] from $mkn-10-problem-list
* code.coding[codeDescription].system = $mkn-10
* code.coding[codeDescription].display = $mkn-10
* code.coding[clinicalQuestion] MS
* code.coding[clinicalQuestion].system = "http://snomed.info/sct" (exactly) // blize nespecifikovano
* code.coding[clinicalQuestion].display
* code.coding[reason] MS
* code.coding[reason].system = "http://snomed.info/sct" (exactly) //243796009
* code.coding[reason].display