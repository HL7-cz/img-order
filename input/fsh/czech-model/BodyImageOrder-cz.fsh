Logical: LogCzBodyImageOrderCz
Id: logBodyImageOrderCz
Title: "A.2 a A.3 - Tělo dokumentu"
Description: """Tělo dokumentu"""

* insert SetFmmandStatusRule ( 0, draft )

//common elements
* infoOObjednavce 0..1 logImageOrderInformationCz "A.2.1 - Informace o objednávce a A.2.2 Odůvodnění vyšetření"
* klinickaUdalost 0..1 logClinicalEventCz "A.2.3 - Klinická událost" """Informace o klinické události, ke které se objednávka vztahuje (odkaz na návštěvu)"""
* uhrada 1..* logCoverageBodyCz "A.2.4 - Úhrada" """Informace o způsobu úhrady objednávky vyšetření"""
* terminNastevy 0..1 logImageAppointmentCz "A.2.5 - Termín návštěvy" """Informace o objednaném termínu vyšetření (pokud byl termín rezervován)"""
* infoOVzorku 0..* logSpecimenInformationCz "A.2.6 - Informace o vzorku" """Pro specifická obrazová vyšetření vzorku"""

//specific elements
* klinickeInformace 1..1 logImageSupportingInformationCz "A.3.1 - Klinické informace" """Informace a údaje sdělované pracovišti zobrazovacích metod, mající vliv na provedení objednávky či interpretaci výsledků vyšetření"""
* datoveElementy 1..1 logOrderDataElementsCz "A.3.2 - Datové elementy objednávky / vyšetření" """Informace o požadovaných vyšetřeních"""
* planovanaPece 0..1 logPlannedCareOrdersCz "A.3.3 - Objednávky plánované péče" """Odkazy na objednávky plánované péče navazující na tuto žádanku"""
* dalsiPodpurneInformace 0..* logOtherSupportingInformationCz "A.3.4 - Další podpůrné informace" """Ostatní podpůrné informace"""
