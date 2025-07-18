Logical: LogCzOrderDataElementsCz
Id: logOrderDataElementsCz
Title: "A.3.2 - Datové elementy objednávky / vyšetření"
Description: """Datové elementy objednávky / vyšetření"""

*  kod 0..* CodeableConcept "A.3.2.1 - Kód vyšetření" """Kód reprezentující vyšetření v rámci dohodnutého číselníku včetně jeho názvu."""
*  nazev 0..* string "A.3.2.2 - Název vyšetření" """Celý název vyšetření, pokud je odlišný od kódované informace."""
*  modalita 0..* CodeableConcept "A.3.2.3 - Modalita" """Požadovaná metoda vyšetření (princip měření)."""
*  castTela 0..* CodeableConcept "A.3.2.4 - Část těla" """Vyšetřovaná část těla"""
*  lateralita 0..* CodeableConcept "A.3.2.5 - Lateralita" """Strana"""
*  poznamka 0..* string "A.3.2.6 - Poznámka" """Poznámka objednatele k žádanému vyšetření"""
