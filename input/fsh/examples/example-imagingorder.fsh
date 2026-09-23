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
* bodySite = $sctCZ#72696002
* code.coding = $sctCZ#19741000087109
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"cs\" lang=\"cs\">Vyšetření MR pravého kolene</div>"
* authoredOn = "2025-04-01T09:00:00+01:00"
* note.text = "Poznámka k vyšetření"
