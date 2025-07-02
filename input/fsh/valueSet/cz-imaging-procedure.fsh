ValueSet: CZ_ImagingProcedureVs
Id: cz-imaging-procedure-vs
Title: "CZ Imaging Procedure"
Description: "ValueSet for imaging procedure in the Czech Imaging project, using SNOMED CT."

* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from system $sct where concept is-a #363679005
* exclude $sct#363679005