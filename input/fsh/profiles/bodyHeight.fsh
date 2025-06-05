Profile: CZ_BodyHeight
Parent: CZ_ObservationImage
Id: cz-bodyheight
Title: "Body Height: Imaging Order (CZ)"
Description: "Profile of body height for the scope of the Czech national interoperability project."
* subject
* code.coding[LOINC] = $loinc#8302-2  //Body height
* code.coding[SNOMEDCT].code = #1153637007 (exactly)
* code.coding[SNOMEDCT].system = $sct (exactly)
* code.coding[NCLP] = $nclp#20411 //výška aktuální
* valueQuantity.code from CZ_ObservationUnitsHeightVs
* effective[x] 1..1
* effective[x] only dateTime