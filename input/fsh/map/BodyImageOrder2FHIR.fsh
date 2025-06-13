Instance: BodyImagingOrder2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/img-order/ConceptMap/BodyImagingOrder2FHIR-cz"
* name = "BodyImagingOrder2FHIRcz"
* title = "CZ Body Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ Imaging Order Body Model to this guide mapping"""

* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageOrderInformationCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-imagingOrderInformation"
* group[=].element[+].code = #Body.OrderInformation
* group[=].element[=].display = "A.2.1 and A.2.2 - Information about order"
* group[=].element[=].target.code = #Composition.section:OrderInformation					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "#Composition.OrderInformation.entry.ofType(CZ_ImagingOrderInformation)"	
* group[=].element[+].code = #OrderInformation.orderDetail
* group[=].element[=].display = "A.2.1 - Order detail"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.identifier
* group[=].element[=].display = "A.2.1.1 - Identifier of order detail"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.dateTime
* group[=].element[=].display = "A.2.1.2 - Date and time of the order placement"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.authoredOn
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.requestedExecdateTime
* group[=].element[=].display = "A.2.1.3 - Date and time of requested execution"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.occurrenceDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.urgency
* group[=].element[=].display = "A.2.1.4 - Urgency of the order"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.priority
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderText
* group[=].element[=].display = "A.2.1.5 - Order text"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderText
* group[=].element[=].display = "A.2.1.6 - Information for the patient"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.patientInstruction
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderReason
* group[=].element[=].display = "A.2.2 - Order reason"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.reasonCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "#CZ_ImagingOrderInformation.reasonReference.ofType(CZ_ConditionImage)"
* group[=].element[+].code = #OrderInformation.orderReason.problem
* group[=].element[=].display = "A.2.2.1 -  Problem / diagnosis / condition description"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.reasonCode.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.reasonCode
* group[=].element[=].display = "A.2.2.4 - Reason for ordering by code"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.reasonCode.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.reasonText
* group[=].element[=].display = "A.2.2.6 - Reason for order by text"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.reasonCode.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageOrderInformationCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-clinicalQuestion"
* group[=].element[+].code = #OrderInformation.orderDetail.questionCode
* group[=].element[=].display = "A.2.2.2 - Clinical question by code"
* group[=].element[=].target.code = #CZ_ClinicalQuestion.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.questionText
* group[=].element[=].display = "A.2.2.3 - Clinical question by text"
* group[=].element[=].target.code = #CZ_ClinicalQuestion.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ClinicalEventCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-encounter"
* group[=].element[+].code = #Body.ClinicalEvent
* group[=].element[=].display = "A.2.3 - Information about clinical event"
* group[=].element[=].target.code = #Composition.encounter					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[=].target.comment = "Composition.encounter.ofType(CZ_Encounter)"	
* group[=].element[+].code = #ClinicalEvent.identifier
* group[=].element[=].display = "A.2.3.1 - Identifier of clinical event"
* group[=].element[=].target.code = #CZ_Encounter.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #ClinicalEvent.type
* group[=].element[=].display = "A.2.3.2 - Type of clinical event"
* group[=].element[=].target.code = #Composition.type
* group[=].element[=].target.display = "FHIR Document Type Codes (LOINC) or Typ_KU (DASTA)"
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #ClinicalEvent.otherInformation
* group[=].element[=].display = "A.2.3.3 - Other information about clinical event"
* group[=].element[=].target.code = #CZ_Encounter.type.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/CoverageBodyCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-coverage"
* group[=].element[+].code = #Body.coverage
* group[=].element[=].display = "A.2.4 - Information about additional coverage"
* group[=].element[=].target.code = #Composition.section:Coverage					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Composition.section:Coverage.entry.ofType(CZ_Coverage)"
* group[=].element[+].code = #Body.coverage.method
* group[=].element[=].display = "A.2.4.1 - Coverage method"
* group[=].element[=].target.code = #CZ_Coverage.type					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Body.coverage.informationPayor
* group[=].element[=].display = "A.2.4.2 - Information about Payor"
* group[=].element[=].target.code = #CZ_Coverage.payor					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[=].display = "A.2.4.3 - Coverage comment"
* group[=].element[=].target.code = #CZ_Coverage.comment					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Body.coverage.comment
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageAppointmentCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-appointment"
* group[=].element[+].code = #Body.Appointment
* group[=].element[=].display = "A.2.5 - Information about appointment"
* group[=].element[=].target.code = #Composition.section:Appointment					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[=].target.comment = "Composition.section:Appointment.entry.ofType(CZ_Appointment)"	
* group[=].element[+].code = #Appointment.identifier
* group[=].element[=].display = "A.2.5.1 - Identifier of appointment"
* group[=].element[=].target.code = #CZ_Appointment.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Appointment.status
* group[=].element[=].display = "A.2.5.2 - Status of appointment"
* group[=].element[=].target.code = #CZ_Appointment.status
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Appointment.description
* group[=].element[=].display = "A.2.5.3 - Description of appointment"
* group[=].element[=].target.code = #CZ_Appointment.description
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Appointment.dateTime
* group[=].element[=].display = "A.2.5.4 - Date Time"
* group[=].element[=].target.code = #CZ_Appointment.created					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Appointment.examDuration
* group[=].element[=].display = "A.2.5.5 - Duration of appointment"
* group[=].element[=].target.code = #CZ_Appointment.minutesDuration					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Appointment.comment
* group[=].element[=].display = "A.2.5.6 - Comment about appointment"
* group[=].element[=].target.code = #CZ_Appointment.comment					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Appointment.patientInstruction
* group[=].element[=].display = "A.2.5.7 - Instructions for the patient"
* group[=].element[=].target.code = #CZ_Appointment.patientInstruction					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Appointment.address
* group[=].element[=].display = "A.2.5.7 - Address of the workplace"
* group[=].element[=].target.code = #CZ_Appointment.Location.address					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/SpecimenInformationCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-specimen"
* group[=].element[+].code = #Body.SpecimenInformation
* group[=].element[=].display = "A.2.6 - Speciment information"
* group[=].element[=].target.code = #Composition.section:OrderInformation.specimen.ofType(CZ_Specimen)				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[+].code = #SpecimenInformation.identifier
* group[=].element[=].display = "A.2.6.1 - Identifier of specimen"
* group[=].element[=].target.code = #CZ_Specimen.identifier
* group[=].element[=].target.display = "Identifier of specimen"
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #SpecimenInformation.species	
* group[=].element[=].display = "A.2.6.2 - Species of animal patient"
* group[=].element[=].target.code = #CZ_Specimen.subject.species
* group[=].element[=].target.display = "Species of animal patient"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.material	
* group[=].element[=].display = "A.2.6.3 - Type of material"
* group[=].element[=].target.code = #CZ_Specimen.type
* group[=].element[=].target.display = "Type of material"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.collectionDate	
* group[=].element[=].display = "A.2.6.4 - Date and time of collection"
* group[=].element[=].target.code = #CZ_Specimen.collection.collectionDate
* group[=].element[=].target.display = "Date and time of collection"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.transportDate	
* group[=].element[=].display = "A.2.6.5 - Date and time of transport"
* group[=].element[=].target.code = #CZ_Specimen.collection.receivedTime
* group[=].element[=].target.display = "Date and time of commencement of transport of the sample to the laboratory"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.type
* group[=].element[=].display = "A.2.6.6 - Sample type"
* group[=].element[=].target.code = #CZ_Specimen.type
* group[=].element[=].target.display = "Entities collected for examination."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.anatomicLocation
* group[=].element[=].display = "A.2.6.7 - Anatomic location"
* group[=].element[=].target.code = #CZ_Specimen.collection.bodySite
* group[=].element[=].target.display = "Anatomic location (body location, laterality) where the material is collected"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.morphology
* group[=].element[=].display = "A.2.6.8 - Morphology"
* group[=].element[=].target.code = #CZ_Specimen.collection.extension:bodySite:bodyStructure.morphology
* group[=].element[=].target.display = "Morphological abnormalities of the anatomical location where the material is taken, for example wound, ulcer."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.instrument
* group[=].element[=].display = "A.2.6.9 - Instrument"
* group[=].element[=].target.code = #CZ_Specimen.subject
* group[=].element[=].target.display = "Device, instrument, physical object (drain, electrode, catheter, etc.)."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.procedure
* group[=].element[=].display = "A.2.6.10 - Collection procedure"
* group[=].element[=].target.code = #CZ_Specimen.collection.method
* group[=].element[=].target.display = "Sampling procedure - for cases where it is relevant to the results."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.sourceDevice
* group[=].element[=].display = "A.2.6.11 - Source Device"
* group[=].element[=].target.code = #CZ_Specimen.subject.type
* group[=].element[=].target.display = "If the material is not collected directly from the patient but comes from a patient-related object, e.g. a catheter"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Device or Location"
* group[=].element[+].code = #SpecimenInformation.samplingPoint
* group[=].element[=].display = "A.2.6.12 - Sampling point"
* group[=].element[=].target.code = #CZ_Specimen.subject.type
* group[=].element[=].target.display = "The area where the material was collected; refers to the environment, not the patient."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Location"
* group[=].element[+].code = #SpecimenInformation.Note
* group[=].element[=].display = "A.2.6.13 - Note"
* group[=].element[=].target.code = #CZ_Specimen.note
* group[=].element[=].target.display = "Note on the material in free text"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.container
* group[=].element[=].display = "A.2.6.14 - Container"
* group[=].element[=].target.code = #CZ_Specimen.container
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.container.type
* group[=].element[=].display = "A.2.6.14.1 - Type"
* group[=].element[=].target.code = #CZ_Specimen.container.type
* group[=].element[=].target.display = "Type of sampling container - tube, sampling bag, etc. including chemical additives."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.container.count
* group[=].element[=].display = "A.2.6.14.2 - Specimen quantity"
* group[=].element[=].target.code = #CZ_Specimen.container.specimenQuantity
* group[=].element[=].target.display = "Specimen quantity within container."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.container.deviceId
* group[=].element[=].display = "A.2.6.14.3 - Device id"
* group[=].element[=].target.code = #CZ_Specimen.container.extension:Device:identifier
* group[=].element[=].target.display = "Unique machine-readable container identifier."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.container.label
* group[=].element[=].display = "A.2.6.14.4 - Label"
* group[=].element[=].target.code = #CZ_Specimen.collector.description
* group[=].element[=].target.display = "Human readable container identifier."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.additionalData
* group[=].element[=].display = "A.2.6.15 - Additional formalised sample data"
* group[=].element[=].target.code = #CZ_Specimen.collection
* group[=].element[=].target.display = "Additional formalised sample data"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.additionalData.date
* group[=].element[=].display = "A.2.6.15.1 - Date"
* group[=].element[=].target.code = #CZ_Specimen.collection.collectedDateTime
* group[=].element[=].target.display = "Date of discovery of the data, to be indicated if different from the date of the order."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.additionalData.value
* group[=].element[=].display = "A.2.6.15.3 - Data value"
* group[=].element[=].target[+].code = #CZ_Specimen.collection.collectedPeriod
* group[=].element[=].target[=].display = "Data value including unit of measurement."
* group[=].element[=].target[=].comment = "If #SpecimenInformation.additionalData.code = 08017 or 09056 (NCLPPOL - Čas odběru v minutách nebo sekundách)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #CZ_Specimen.collection.quantity
* group[=].element[=].target[=].display = "Data value including unit of measurement."
* group[=].element[=].target[=].comment = "If #SpecimenInformation.additionalData.code = 03142 (NCLPPOL - Objem)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #CZ_Specimen.condition
* group[=].element[=].target[=].display = "Data value including unit of measurement."
* group[=].element[=].target[=].comment = "If #SpecimenInformation.additionalData.code = 20293 (NCLPPOL - Stav materiálu)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #CZ_Specimen.note
* group[=].element[=].target[=].display = "Data value including unit of measurement."
* group[=].element[=].target[=].comment = "If #SpecimenInformation.additionalData.code = 20206 (NCLPPOL - Poznámky-specifikace-jiné)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.collector
* group[=].element[=].display = "A.2.6.16 - Collector"
* group[=].element[=].target.code = #CZ_Specimen.collector
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.collector.identifier
* group[=].element[=].display = "A.2.6.16.1 - Identifier of the sample collector"
* group[=].element[=].target.code = #CZ_Specimen.collector.identifier
* group[=].element[=].target.display = "Identifier of the sample collector – this refers either to an internal identifier assigned by the healthcare provider or (preferably) a national ID of the healthcare professional, such as a license or registration number. If the sample is not collected by a healthcare professional but, for example, by the patient themselves, an appropriate personal identifier should be used instead."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.collector.name
* group[=].element[=].display = "A.2.6.16.2 - Name of the sample collector"
* group[=].element[=].target.code = #CZ_Specimen.collector.name
* group[=].element[=].target.display = "Name of the sample collector"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.collector.contact
* group[=].element[=].display = "A.2.6.16.3 - Contact information of the sample collector"
* group[=].element[=].target.code = #CZ_Specimen.collector.address
* group[=].element[=].target.display = "Contact information of the sample collector (address and telecommunication data)."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.collector
* group[=].element[=].display = "A.2.6.16.4 - Organization of the sample collector"
* group[=].element[=].target.code = #CZ_Specimen.collector.organization
* group[=].element[=].target.display = "Organization of the sample collector (healthcare provider)."
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-observationImage"
* group[=].element[+].code = #Body.SupportingInformation.biometricData
* group[=].element[=].display = "A.3.1.1 - Biometric data"
* group[=].element[=].target.code = #Composition.section:OrderInformation.supportingInfo.ofType(CZ_ObservationImage)			
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-bodyweight"
* group[=].element[+].code = #Body.SupportingInformation.weight
* group[=].element[=].display = "A.3.1.1.2 - Weight"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.supportingInfo.ofType(CZ_BodyWeight)		
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #SupportingInformation.weight.valueQuantity
* group[=].element[=].display = "A.3.1.1.2.1 - Value Quantity"
* group[=].element[=].target.code = #CZ_BodyWeight.valueQuantity
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #SupportingInformation.weight.code
* group[=].element[=].display = "A.3.1.1.2.2 - Code"
* group[=].element[=].target.code = #CZ_BodyWeight.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #SupportingInformation.weight.dateTime
* group[=].element[=].display = "A.3.1.1.2.3 - DateTime"
* group[=].element[=].target.code = #CZ_BodyWeight.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-bodyheight"
* group[=].element[+].code = #Body.SupportingInformation.height
* group[=].element[=].display = "A.3.1.1.2 - Height"
* group[=].element[=].target.code = #Composition.section:OrderInformation.supportingInfo.ofType(CZ_BodyHeight)				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #SupportingInformation.height.valueQuantity
* group[=].element[=].display = "A.3.1.1.2.1 - Value Quantity"
* group[=].element[=].target.code = #CZ_BodyHeight.valueQuantity
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #SupportingInformation.height.code
* group[=].element[=].display = "A.3.1.1.2.2 - Code"
* group[=].element[=].target.code = #CZ_BodyHeight.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #SupportingInformation.height.dateTime
* group[=].element[=].display = "A.3.1.1.2.3 - DateTime"
* group[=].element[=].target.code = #CZ_BodyHeight.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-conditionImage"
* group[=].element[+].code = #Body.SupportingInformation.otherRelevantClinicalInformation
* group[=].element[=].display = "A.3.1.2 - Other Relevant Clinical Information"
* group[=].element[=].target.code = #Composition.section:OrderInformation.supportingInfo.ofType(Condition)		
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #SupportingInformation.otherRelevantClinicalInformation.code
* group[=].element[=].display = "A.3.1.2.1 - Code"
* group[=].element[=].target.code = #Condition.code.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SupportingInformation.otherRelevantClinicalInformation.text
* group[=].element[=].display = "A.3.1.2.2 - Text"
* group[=].element[=].target.code = #Condition.code.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-MedicationStatement"
* group[=].element[+].code = #Body.SupportingInformation.Medication
* group[=].element[=].display = "A.3.1.3.1 - Medication"
* group[=].element[=].target.code = #Composition.section:OrderInformation.supportingInfo.ofType(CZ_MedicationStatement)			
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Medication.identifier
* group[=].element[=].display = "A.3.1.3.1.1 - Identifier of medication"
* group[=].element[=].target.code = #CZ_MedicationStatement.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Medication.code
* group[=].element[=].display = "A.3.1.3.1.2 - Code of Medication"
* group[=].element[=].target.code = #CZ_MedicationStatement.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Medication.amount
* group[=].element[=].display = "A.3.1.3.1.3 - Amount of Medication"
* group[=].element[=].target.code = #CZ_MedicationStatement.amount
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-deviceUseStatement"
* group[=].element[+].code = #Body.SupportingInformation.implant
* group[=].element[=].display = "A.3.1.3.2 - Implant"
* group[=].element[=].target.code = #Composition.section:MedicalDevices
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[=].target.comment = "Composition.section:MedicalDevices.entry.ofType(CZ_DeviceUseStatement)"
* group[=].element[+].code = #SupportingInformation.implant.type
* group[=].element[=].display = "A.3.1.3.2.1 - Type"
* group[=].element[=].target.code = #CZ_DeviceUseStatement.device.type
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SupportingInformation.implant.identifier
* group[=].element[=].display = "A.3.1.3.2.2 - Identifier"
* group[=].element[=].target.code = #CZ_DeviceUseStatement.device.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SupportingInformation.implant.model
* group[=].element[=].display = "A.3.1.3.2.3 - Model"
* group[=].element[=].target.code = #CZ_DeviceUseStatement.device.modelNumber
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SupportingInformation.implant.bodyPart
* group[=].element[=].display = "A.3.1.3.2.4 - Body Part"
* group[=].element[=].target.code = #CZ_DeviceUseStatement.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-allergyIntolerance"
* group[=].element[+].code = #Body.SupportingInformation.allergyIntolerance
* group[=].element[=].display = "A.3.1.4.1 - Allergy intolerance"
* group[=].element[=].target.code = #Composition.section:OrderInformation.supportingInfo.ofType(CZ_AllergyIntolerance)			
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #AllergyIntolerance.identifier
* group[=].element[=].display = "A.3.1.4.1.1 - Identifier of allergyIntolerance"
* group[=].element[=].target.code = #CZ_AllergyIntolerance.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #AllergyIntolerance.clinicalStatus
* group[=].element[=].display = "A.3.1.4.1.2 - Clinical status of allergyIntolerance"
* group[=].element[=].target.code = #CZ_AllergyIntolerance.clinicalStatus
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #AllergyIntolerance.type
* group[=].element[=].display = "A.3.1.4.1.3 - Type of allergyIntolerance"
* group[=].element[=].target.code = #CZ_AllergyIntolerance.type
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #AllergyIntolerance.category
* group[=].element[=].display = "A.3.1.4.1.4 - Category of allergyIntolerance"
* group[=].element[=].target.code = #CZ_AllergyIntolerance.category
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #AllergyIntolerance.code
* group[=].element[=].display = "A.3.1.4.1.5 - Code of allergyIntolerance"
* group[=].element[=].target.code = #CZ_AllergyIntolerance.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #AllergyIntolerance.note
* group[=].element[=].display = "A.3.1.4.1.6 - Note of allergyIntolerance"
* group[=].element[=].target.code = #CZ_AllergyIntolerance.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-observationImage"
* group[=].element[+].code = #Body.SupportingInformation.limitationOfPatientMobility
* group[=].element[=].display = "A.3.1.5 - Limitation of patient mobility"
* group[=].element[=].target.code = #Composition.section::OrderInformation.supportingInfo.ofType(CZ_ObservationImage)		
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #SupportingInformation.limitationOfPatientMobility.code
* group[=].element[=].display = "A.3.1.5.1 - Code"
* group[=].element[=].target.code = #CZ_ObservationImage.code.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SupportingInformation.limitationOfPatientMobility.text
* group[=].element[=].display = "A.3.1.5.2 - Text"
* group[=].element[=].target.code = #CZ_ObservationImage.code.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-observationImage"
* group[=].element[+].code = #Body.SupportingInformation.otherInformation
* group[=].element[=].display = "A.3.1.6 - Limitation of patient mobility"
* group[=].element[=].target.code = #Composition.section:OrderInformation.supportingInfo.ofType(CZ_ObservationImage)		
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #SupportingInformation.otherInformation.dateTime
* group[=].element[=].display = "A.3.1.6.1 - Date and time of information"
* group[=].element[=].target.code = #CZ_ObservationImage.valueDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SupportingInformation.otherInformation.code
* group[=].element[=].display = "A.3.1.6.1 - Code of information"
* group[=].element[=].target.code = #CZ_ObservationImage.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SupportingInformation.otherInformation.value
* group[=].element[=].display = "A.3.1.6.2 - Value of information"
* group[=].element[=].target.code = #CZ_ObservationImage.valueQuantity
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/OrderDataElementsCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-imagingOrderInformation"
* group[=].element[+].code = #Body.OrderDataElements
* group[=].element[=].display = "A.3.2 - Order/examination data elements."
* group[=].element[=].target.code = #Composition.section:OrderInformation			
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Composition.section:OrderInformation.entry.ofType(CZ_ImagingOrderInformation)"
* group[=].element[+].code = #OrderDataElements.code
* group[=].element[=].display = "A.3.2.1 - Examination code"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #OrderDataElements.name
* group[=].element[=].display = "A.3.2.2 Name of the examination"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #OrderDataElements.modality
* group[=].element[=].display = "A.3.2.3 - Modality"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.orderDetail.modality
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #OrderDataElements.bodyPart
* group[=].element[=].display = "A.3.2.4 - Body Part"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.orderDetail.bodyPart
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #OrderDataElements.laterality
* group[=].element[=].display = "A.3.2.5 - Laterality"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.orderDetail.laterality
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #OrderDataElements.note
* group[=].element[=].display = "A.3.2.6 - Examination note"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/OtherSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-carePlanImage"
* group[=].element[+].code = #Body.PlannedCareOrdersCz
* group[=].element[=].display = "A.3.3 - Order/examination data elements."
* group[=].element[=].target.code = #Composition.section:CarePlan			
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Composition.section:CarePlan.entry.ofType(CZ_CarePlanImage)"
* group[=].element[+].code = #PlannedCareOrdersCz.identifier
* group[=].element[=].display = "A.3.3.1 - Identifier"
* group[=].element[=].target.code = #CZ_CarePlanImage.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #PlannedCareOrdersCz.name
* group[=].element[=].display = "A.3.3.2 Title of the observation"
* group[=].element[=].target.code = #CZ_CarePlanImage.title
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/OtherSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-observationImage"
* group[=].element[+].code = #Body.OtherSupportingInformationCz
* group[=].element[=].display = "A.3.4 - Order/examination data elements."
* group[=].element[=].target.code = #Composition.section:OrderInformation.supportingInfo.ofType(CZ_ObservationImage)"			
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #OtherSupportingInformationCz.identifier
* group[=].element[=].display = "A.3.4.1 - Identifier"
* group[=].element[=].target.code = #CZ_ObservationImage.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #OtherSupportingInformationCz.name
* group[=].element[=].display = "A.3.4.2 Title of the observation"
* group[=].element[=].target.code = #CZ_ObservationImage.title
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	

