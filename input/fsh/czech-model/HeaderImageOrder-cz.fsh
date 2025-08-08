Logical: LogCzHeaderImagingOrderCz
Id: logHeaderImagingOrder
Title: "A.1 - Hlavička dokumentu"
Description: """Záhlaví dokumentu s administrativními údaji"""

* subjekt 1..1 logSubjectCz "A.1.1 - Identifikace pacienta and A.1.2 Kontaktní informace pacienta/subjektu" """Identifikace pacienta/subjektu a jeho kontaktních informací"""
* zdravotniPojisteni 0..1 logPayerCz "A.1.3 - Zdravotní pojištění" """Informace o zdravotním pojištění."""
* uhrada 1..1 logCoverageOrderCz "A.1.4 - Úhrada" """Informace o způsobu úhrady objednávky vyšetření."""
* objednatel 1..* logAuthorCz "A.1.5 - Objednatel" """Objednatel provedení zdravotní služby."""
* zpracovatel 0..1 logRequestedPerformerCz "A.1.6 - Zpracovatel" """Předpokládaný zpracovatel žádanky (u neadresné žádanky nebude zpracovatel uveden)."""
* dodatecniPrijemci 0..* logAdditionalRecipientCz "A.1.7 - Příjemce nálezu" """Dodateční příjemci nálezu kromě objednatele"""
* metadataDokumentu 1..1 logDocumentMetadataCz "A.1.8 - Metadata dokumentu" """Dokument metadata"""
* elektronickyPodpis 1..* logdigitalSignatureCz "A.1.9 - Elektronické podpisy" """Elektronické podpisy dle zákona 327/2011 §54a"""
