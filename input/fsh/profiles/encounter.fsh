Profile: CZ_Encounter
Parent: Encounter
Id: cz-encounter
Title: "Encounter: Imaging Order (CZ)"
Description: "Czech profile for encounter. "

* insert SetFmmandStatusRule ( 0, draft )

* identifier 1..
* status
* class
* text
* serviceProvider only Reference(CZ_OrganizationCore)