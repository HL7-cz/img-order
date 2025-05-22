Profile: ConditionImageCz
Parent: Condition
Id: ConditionImageCz
Title: "Condition: Imaging Order (CZ)"
Description: "Condition for Imaging Order for the scope of the Czech national interoperability project."

*  identifier
* code MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains 
    codeDescription 0..1 and 
    clinicalQuestion 0..1 and 
    reason 0..1 
* code.coding[codeDescription] from $mkn-10-problem-list
* code.coding[codeDescription].system = $mkn-10
* code.coding[clinicalQuestion] MS
* code.coding[clinicalQuestion] from $sct // blize nespecifikovano
* code.coding[reason] MS
* code.coding[reason] from $sct //243796009