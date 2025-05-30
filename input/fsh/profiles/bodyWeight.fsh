Profile: CZ_BodyWeight
Parent: CZ_ObservationImage
Id: cz-bodyweight
Title: "Czech BodyWeight"
Description: "Profile of body weight for the scope of the Czech national interoperability project."
* subject
* code.coding[LOINC] = $loinc#29463-7 //Body weight
* code.coding[SNOMEDCT] = $sct#27113001
* code.coding[NCLP] = $nclp#20042
* valueQuantity.code from ObservationUnitsWeight
* effective[x] 1..1
* effective[x] only dateTime
