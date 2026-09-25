ValueSet:   ConditionSctVS
Id:         condition-sct
Title:      "Snomed CT condition Value Set"
Description:  """Snomed CT value set for condition/problem/Diagnosis codes."""
* ^language = #cs
* ^version = "1.0.0"
* ^status = #active
* ^date = "2026-10-01"
* ^publisher = "NCEZ"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czechia"
* ^experimental = false
* ^url = "https://ncez.mzcr.cz/terminology/ValueSet/condition-sct"

* insert SNOMEDCopyrightForVS

* codes from system $sctCZ where concept is-a #404684003 "Clinical finding"
* $sctCZ#160245001  //
//* codes from system $sctCZ where concept is-a #71388002 "Procedure"
//* codes from system $sctCZ where concept is-a #243796009 "Context dependent categories"
//* codes from system $sctCZ where concept is-a #272379006 "Events"

