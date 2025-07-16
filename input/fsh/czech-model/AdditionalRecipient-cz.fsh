Logical: LogCzAdditionalRecipient
Id: logAdditionalRecipientCz
Title: "A.1.7 - Příjemce nálezu"
Description: """Příjemce nálezu (Dodateční příjemci nálezu kromě objednatele)"""

* insert SetFmmandStatusRule ( 1, draft )

* identifikator 1..* Identifier "A.1.7.1 - Identifikátor příjemce" """I Identifikátor, který se vztahuje na tuto osobu v této roli."""
* jmeno 1..1 HumanName "A.1.7.2 - Jméno příjemce" """Jméno a příjmení osoby příjemce."""
* IDOrganizace 0..* Identifier "A.1.7.3 - ID organizace" """Identifikátor organizace příjemce nálezu, který se používá k identifikaci organizace v různých informačních systémech."""
* organizace 1..1 Base "A.1.7.4 - Organizace příjemce" """Název, identifikační a kontaktní údaje zdravotnického zařízení příjemce, případně také pracoviště příjemce."""

