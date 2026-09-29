Instance: cz-imagingorder-example
InstanceOf: CZ_ImagingOrderInformation
Usage: #example
Title: "Imaging order: Magnetic Resonance"
Description: "Imaging order for Magnetic Resonance"
* status = #active
* intent = #order
* category[imaging] = $sct#363679005 // Imaging
* performer = Reference(MRDevice)
* subject = Reference(Mracena)
* insurance = Reference(VZPCoverage)
* bodySite = $sctCZ#72696002
* code.coding = $sctCZ#19741000087109
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"cs\" lang=\"cs\">Vyšetření MR pravého kolene</div>"
* authoredOn = "2025-04-01T09:00:00+01:00"
* reasonCode.coding[mkn-10] = $mkn10#M2321
* note.text = "Poznámka k vyšetření"

Instance: VZPCoverage
InstanceOf: CZ_CoverageOrder
Usage: #example
Title: "Coverage: Healthcare insurance coverage for patient Mracena"
* status = #active
* beneficiary = Reference(Mracena)
* payor = Reference(VZPPojistovna)
* type = $v3-ActCode#HIP

Instance: VZPPojistovna
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "Organization providing healthcare insurance coverage for patient Mracena"
Title: "Organization: Healthcare insurance company 4"
* name = "Všeobecná zdravotní pojišťovna ČR"
* identifier[KP].system = "https://ncez.mzcr.cz/fhir/sid/kp"
* identifier[KP].value = "111" 


