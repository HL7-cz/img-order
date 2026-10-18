Logical: LogCzClinicalEventCz
Id: logClinicalEventCz
Title: "A.2.3 - Klinická událost (encounter)"
Description: """Informace o klinické události, ke které se objednávka vztahuje (odkaz na návštěvu)"""

* insert SetFmmandStatusRule (2, trial-use)

* identifikator 1..* Identifier "A.2.3.1 - ID klinické události" """Jednoznačný, globálně unikátní identifikátor klinické události, k němuž se objednávka vztahuje."""
* typ 0..* CodeableConcept "A.2.3.2 - Typ klinické události" """Typ klinické události dle číselníku typů. (např. hospitalizace, ambulantní návštěva apod.)."""
* dalsiInformace 0..1 Base "A.2.3.3 - Další informace o klinické události" """Typ poskytovaných služeb, období či délka klinické události, vazba na další klinické události apod."""
* dalsiInformace.typSluzeb 0..1 CodeableConcept "A.2.3.3.1 - Typ poskytovaných služeb" """Typ služeb poskytovaných v rámci klinické události."""
* dalsiInformace.obdobi 0..1 Period "A.2.3.3.2 - Období" """Období klinické události (začátek a konec)."""
* dalsiInformace.delka 0..1 Duration "A.2.3.3.3 - Délka" """Délka trvání klinické události."""
* dalsiInformace.vazba 0..1 Identifier "A.2.3.3.4 - Vazba na další klinickou událost" """Identifikátor nadřazené klinické události, se kterou tato klinická událost souvisí."""