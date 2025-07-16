Logical: LogCzImagingOrderCz
Id: logImagingOrderCz
Title: "A - Žádanka obrazového vyšetření"
Description: """Žádanka obrazového vyšetření"""

* hlavicka 1..1 logHeaderImagingOrder "A.1 -  Hlavička žádanky obrazového vysetreni" """ Hlavička žádanky obrazového vysetreni"""
* telo 0..1 logBodyImageOrderCz "A.2 a A.3 - Tělo žádanky obrazového vyšetření" """Tělo žádanky obrazového vyšetření"""
* presentacniForma 1..* logPresentedFormCz "A.4 - Vizuální podoba dokumentu" """Žádanka obrazového vyšetření čitelná lidským okem,  je požadován PDF formát."""
* prilohy 0..* logAttachmentsCz "A.5 - Přílohy" """Ostatní přílohy"""