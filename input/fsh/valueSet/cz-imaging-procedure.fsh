ValueSet: CZ_ImagingProcedureVs
Id: cz-imaging-procedure-vs
Title: "CZ Imaging Procedure"
Description: "ValueSet for imaging procedure in the Czech Imaging project, using SNOMED CT."

* ^language = #cs
* ^version = "1.0.0"
* ^status = #active
* ^date = "2024-01-01"
* ^publisher = "NCEZ"
* ^experimental = false
* ^url = "https://ncez.mzcr.cz/terminology/ValueSet/imaging-procedure-cz"

* insert SNOMEDCopyrightForVS
* include codes from system $sct where concept is-a #363679005
* exclude $sct#363679005