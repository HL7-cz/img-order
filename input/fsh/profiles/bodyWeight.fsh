Profile: CZ_BodyWeight
Parent: CZ_ObservationImage
Id: cz-bodyweight
Title: "Czech BodyWeight"
Description: "Profile of body weight for the scope of the Czech national interoperability project."
* subject
* code.coding[LOINC] = $loinc#29463-7 //Body weight
* code.coding[SNOMEDCT].code = #27113001 (exactly)
* code.coding[SNOMEDCT].system = $sct (exactly)
* code.coding[NCLP] = $nclp#20042
* valueQuantity.code from CZ_ObservationUnitsWeightVs
* effective[x] 1..1
* effective[x] only dateTime
