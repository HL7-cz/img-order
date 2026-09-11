V oboru zobrazovacích metod se pro archivaci a výměnu dat standardně používá protokol a formát Digital Imaging and Communications in Medicine (DICOM). Ten definuje mimo jiné jednotlivé obrazové modality a je využit k archivaci dat v systému Picture Archiving and Communication System (PACS).

DICOM je propojen se systémem klinické terminologie SNOMED CT. Ostatní standardy a číselníky sdílí zobrazovací metody s dalšími dokumenty pacientské dokumentace. Jde zejména o HL7 FHIR, SNOMED CT, MKN-10, DICOM a národní číselníky a identifikátory. Přehled použitých code systémů a oborů hodnot je na stránce [Terminologické aspekty](terminology-considerations-cs.html).

<div>
<img src="paper-order.png" class="figure-img img-responsive img-rounded center-block" width="40%">
<p><strong>Obr. 1: Papírová žádanka</strong></p>
<p> </p>
</div>

Papírovým vzorem pro Žádanku o zobrazovací vyšetření je **Poukaz na vyšetření/ošetření typu Z**. Aktuální verze tiskopisů jsou dostupné na stránkách [VZP – tiskopisy pro poskytovatele](https://www.vzp.cz/poskytovatele/tiskopisy).

Požadavky na obsah vyžádání dalších zdravotních služeb stanoví `příloha č. 1 v části 2 k vyhlášce č. 444/2024 Sb., o zdravotnické dokumentaci`. Ve znění k 19. 2. 2025 obsahuje vyžádání dalších zdravotních služeb:

a) požadované zdravotní služby,
b) zdůvodnění požadavku,
c) naléhavost požadavku,
d) údaje o posledně zjištěném zdravotním stavu, včetně těch výsledků laboratorních a dalších pomocných vyšetření, které jsou podstatné pro poskytnutí vyžádaných zdravotních služeb,
e) údaje o dosavadní léčbě a reakci pacienta na ni,
f) pracovní diagnózu,
g) uvedení zásadních anamnestických údajů souvisejících s požadovanými zdravotními službami.

Tato implementační příručka převádí uvedené legislativní požadavky do interoperabilní elektronické podoby založené na standardu HL7 FHIR R4. Které prvky logického modelu jednotlivé požadavky naplňují, uvádí Speciální funkční specifikace eŽádanky typu Z.