Instance: CarePlanExample
InstanceOf: CZ_CarePlanImage
Usage: #example
Description: "Care Plan"

* identifier[+].system = "http://hospital.org/lis-order"
* identifier[=].value = "123456789"
* description = "Žádanka na odběr krve"
* status = #active
* intent = #order
* subject = Reference (Mracena)