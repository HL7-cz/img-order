Instance: cz-deviceusestatement-example
InstanceOf: CZ_DeviceUseStatement
Title: "Example DeviceUseStatement for Implant"
Description: "A DeviceUseStatement documenting the use of an implanted pacemaker in the imaging order."
* id = "b29cacfd-b05b-44cf-be5a-8b6d76bdc375"

* status = #active

* subject = Reference(urn:uuid:dd800c46-f71a-4628-b457-6ccaa27dd6bc)
//* subject.display = "Fiona XXX_Swart"

* timingPeriod.start = "2022-03-15"
* timingPeriod.end = "2024-12-01"

* device = Reference(pacemaker-001)
* device.display = "Implant"

* reasonCode[0] = $sct#27885002 "Complete atrioventricular block"
* reasonCode[0].text = "Complete AV block"

* bodySite = $sct#73829009  "Right atrium"


* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><strong>Device:</strong> Implantable Pacemaker</p>
  <p><strong>Patient:</strong> Mracena</p>
  <p><strong>Status:</strong> Active</p>
  <p><strong>Timing:</strong> 2022-03-15 to 2024-12-01</p>
  <p><strong>Reason:</strong> Complete atrioventricular block</p>
  <p><strong>Body Site:</strong> Right atrium</p>
</div> """

Instance: pacemaker-001
InstanceOf: CZ_MedicalDevice
Title: "Example Device - Implantable Pacemaker"
Description: "A sample Device resource for an implantable pacemaker, referenced in a DeviceUseStatement."


* identifier.system = "https://hl7europe.org/example-identifier"
* identifier.value = "pacemaker-001"

* udiCarrier.deviceIdentifier = "12345678901234"
* udiCarrier.carrierHRF = "(01)12345678901234"

* status = #active

* type.coding.code = #40388003
* type.coding.system = $sct
* type.text = "Implant"

* patient = Reference(Mracena)
* patient.display = "Mracena"

* manufacturer = "MedDevice Inc."
* lotNumber = "LOTPM1234"
* serialNumber = "SN987654321"
* modelNumber = "MDX-5000"
* expirationDate = "2028-06-30"