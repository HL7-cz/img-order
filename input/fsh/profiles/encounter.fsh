Profile: CZ_Encounter
Parent: Encounter
Id: cz-encounter
Title: "Encounter (CZ)"
Description: "Czech profile for encounter. "

* . ^short = "Imaging Order"
* . ^definition = "Imaging Order composition."

* insert SetFmmandStatusRule ( 0, draft )

* identifier 1..
* type 0..
* type from TypeEncounterCzVs
