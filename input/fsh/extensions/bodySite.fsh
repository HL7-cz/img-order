Extension: BodySiteImageOrder
Id: cz-bodySite-imageOrder   
Title: "Body Site Reference"
Description: "A reference to a BodyStructure resource that identifies the anatomic location where a service request is to be performed."
Context: ServiceRequest

* . ^short = "Body Site"
* . ^definition = "Extension for body site reference in ServiceRequest for imaging orders."
* . ^comment = "Service request may include multiple body sites."
* url only uri
* value[x] 1..
* value[x] only Reference(BodyStructureCz)