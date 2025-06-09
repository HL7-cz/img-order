Instance: cz-imagingorder-example
InstanceOf: CZ_ImagingOrderInformation
Usage: #example
Description: "Imaging order for Magnetic Resonance"

* identifier[+].system = "http://hospital.cz/nis"
* identifier[=].value = "27520536"
* status = #active
* intent = #order
* category = $sct#363679005 	"Imaging"
* performer = Reference(MRDevice)
* subject = Reference(Mracena)
* bodySite = $sct#72696002
* code.coding = $sct#19741000087109
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vyšetření MR pravého kolene</div>"
* authoredOn = "2025-04-01T09:00:00+01:00"
* note.text = "Poznámka k vyšetření"