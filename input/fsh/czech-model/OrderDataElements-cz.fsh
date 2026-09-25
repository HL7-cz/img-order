Logical: LogCzOrderDataElementsCz
Id: logOrderDataElementsCz
Title: "A.3.2 - Datové elementy objednávky / vyšetření"
Description: """Datové elementy objednávky / vyšetření"""

*  pozadovaneVysetreni 1..* Base "A.3.2.1 - Požadované vyšetření" """Požadované vyšetření"""
*  pozadovaneVysetreni.kod 1..1 CodeableConcept "A.3.2.1.1 - Kód vyšetření" """Kód reprezentující vyšetření v rámci dohodnutého číselníku včetně jeho názvu."""
*  pozadovaneVysetreni.nazev 0..1 string "A.3.2.1.2 - Název vyšetření" """Celý název vyšetření, pokud je odlišný od kódované informace."""
*  pozadovaneVysetreni.modalita 1..* CodeableConcept "A.3.2.1.3 - Modalita" """Požadovaná metoda vyšetření (princip měření)."""
*  pozadovaneVysetreni.castTela 1..* CodeableConcept "A.3.2.1.4 - Část těla" """Vyšetřovaná část těla"""
*  pozadovaneVysetreni.lateralita 0..* CodeableConcept "A.3.2.1.5 - Lateralita" """Strana"""
*  pozadovaneVysetreni.poznamka 0..1 string "A.3.2.1.6 - Poznámka" """Poznámka objednatele k žádanému vyšetření"""
