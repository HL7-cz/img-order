Profile: CZ_BodyHeight
Parent: CZ_ObservationImage
Id: cz-bodyheight
Title: "Czech BodyHeight"
Description: "Profile of body height for the scope of the Czech national interoperability project."
* subject
* code.coding[LOINC] = $loinc#8302-2  //Body height
* code.coding[SNOMEDCT] =  $sct#1153637007
* code.coding[NCLP] = $nclp#20411 //výška aktuální
* valueQuantity.code from ObservationUnitsHeight
* effective[x] 1..1
* effective[x] only dateTime