// this parameters instance configures the Czech expansion of SNOMED CT when building the IG
Instance: expansion
InstanceOf: Parameters
Description: "SNOMED CT Czech expansion parameter"
Usage: #definition
* parameter[+].name = "displayLanguage"
* parameter[=].valueCode = urn:ietf:bcp:47#cs
* parameter[+].name = "system-version"
* parameter[=].valueCanonical = "http://snomed.info/sct|http://snomed.info/sct/11000279109"