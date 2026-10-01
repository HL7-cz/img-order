ValueSet:      CZ_BodySite
Id:	           cz-body-site
Title:	       "SNOMED CT Body Structures Value set."
Description:   "This value set includes all codes from SNOMED CT  where concept is descendant of 442083009 (Anatomical or acquired body site (body structure))."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2026-01-01"
* ^publisher = "Národní centrum elektronického zdravotnictví (NCEZ)"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czechia"
* ^experimental = false
* ^url = "https://ncez.mzcr.cz/terminology/ValueSet/cz-body-site"
* ^language = #cs

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 2, trial-use)

* codes from system $sctCZ where concept descendent-of #442083009