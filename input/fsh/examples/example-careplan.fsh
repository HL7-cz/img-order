Instance: CarePlanExample
InstanceOf: CZ_CarePlanImage
Usage: #example
Description: "Care Plan"

* identifier[+].system = "https://homolka.cz/nis"
* identifier[=].value = "123456789"
* description = "Žádanka na odběr krve"
* status = #active
* intent = #order
* subject = Reference (Mracena)