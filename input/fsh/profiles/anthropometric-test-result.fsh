Invariant: cz-anthropometric-unit-by-metric
Description: "The UCUM unit must correspond to the type of anthropometric measurement."
Severity: #error
Expression: "value.ofType(Quantity).system = 'http://unitsofmeasure.org' and (
  (code.coding.where((system = 'http://loinc.org' and code in ('8302-2' | '9843-4')) or (system = 'http://snomed.info/sct' and code in ('50373000' | '363812007'))).exists() implies value.ofType(Quantity).code in ('m' | 'cm' | 'mm')) and
  (code.coding.where((system = 'http://loinc.org' and code = '29463-7') or (system = 'http://snomed.info/sct' and code = '27113001') or (system = 'https://nclp.ncez.mzcr.cz/CodeSystem/nclppol' and code = '20042')).exists() implies value.ofType(Quantity).code in ('kg' | 'g')) and
  (code.coding.where((system = 'http://loinc.org' and code = '39156-5') or (system = 'http://snomed.info/sct' and code = '60621009') or (system = 'https://nclp.ncez.mzcr.cz/CodeSystem/nclppol' and code = '20454')).exists() implies value.ofType(Quantity).code = 'kg/m2') and
  (code.coding.where((system = 'http://loinc.org' and code = '8277-6') or (system = 'http://snomed.info/sct' and code = '301898006')).exists() implies value.ofType(Quantity).code = 'm2'))"

Profile: CZ_Anthropometric_Test_Result
Parent: CZ_ObservationImage
Id: cz-anthropometric-test-result
Title: "Anthropometric Test Result (CZ)"
Description: "Quantitative anthropometric measurement for the scope of the Czech national interoperability project."

* subject
* code 1..1
* code from CZ_AnthropometricMetricVs (required)

* valueQuantity 1..1
* valueQuantity.value 1..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 1..1
* valueQuantity.unit 1..1
* effective[x] 1..1
* effective[x] only dateTime
* obeys cz-anthropometric-unit-by-metric
