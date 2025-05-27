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
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/ImagingOrderInformationCz"
* group[=].element[+].code = #Body.OrderInformation
* group[=].element[=].display = "A.2.1 and A.2.2 - Information about order"
* group[=].element[=].target.code = #Composition.sectionOrderInformation					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[+].code = #OrderInformation.orderDetail
* group[=].element[=].display = "A.2.1 - Order detail"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.entry.ofType(order)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.identifier
* group[=].element[=].display = "A.2.1.1 - Identifier of order detail"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.dateTime
* group[=].element[=].display = "A.2.1.2 - Date and time of the order placement"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.authoredOn
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.requestedExecdateTime
* group[=].element[=].display = "A.2.1.3 - Date and time of requested execution"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.occurrenceDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.urgency
* group[=].element[=].display = "A.2.1.4 - Urgency of the order"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.priority
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.orderText
* group[=].element[=].display = "A.2.1.5 - Order text"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.orderText
* group[=].element[=].display = "A.2.1.5 - Information for the patient"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.patientInstruction
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "A.2.2 - Order reason"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.entry.ofType(orderReason)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderReason.identifier
* group[=].element[=].display = "A.2.2.1 - Identifier of order detail"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.orderReason.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderReason.problem
* group[=].element[=].display = "A.2.2.2 - Date and time of the order placement"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.orderReason.codeDescription.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.questionCode
* group[=].element[=].display = "A.2.2.3 - Date and time of requested execution"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.orderReason.clinicalQuestion.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.questionText
* group[=].element[=].display = "A.2.2.4 - Urgency of the order"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.orderReason.clinicalQuestion.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.reasonCode
* group[=].element[=].display = "A.2.2.5 - Order text"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.orderReason.reason.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.reasonText
* group[=].element[=].display = "A.2.2.6 - Information for the patient"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.orderReason.reason.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ClinicalEventCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-encounter"
* group[=].element[+].code = #Body.ClinicalEvent
* group[=].element[=].display = "A.2.3 - Information about clinical event"
* group[=].element[=].target.code = #Composition.extension:basedOn:order					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[=].target.comment = "Composition.section:sectionEncounter.entry.ofType(Encounter)"	
* group[=].element[+].code = #Encounter.identifier
* group[=].element[=].display = "A.2.3.1 - Identifier of clinical event"
* group[=].element[=].target.code = #Composition.encounter.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Encounter.type
* group[=].element[=].display = "A.2.3.2 - Type of clinical event"
* group[=].element[=].target.code = #Composition.encounter.type
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Encounter.otherInformation
* group[=].element[=].display = "A.2.3.3 - Other information about clinical event"
* group[=].element[=].target.code = #Composition.encounter.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/CoverageBodyCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-coverage"
* group[=].element[+].code = #Body.coverage
* group[=].element[=].display = "A.2.4 - Information about additional coverage"
* group[=].element[=].target.code = #Composition.extension:basedOn:order					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Composition.section:sectionPayers.entry.ofType(Coverage)"
* group[=].element[+].code = #Body.coverage.method
* group[=].element[=].display = "A.2.4.1 - Coverage method"
* group[=].element[=].target.code = #Coverage.type					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Body.coverage.informationPayor
* group[=].element[=].display = "A.2.4.2 - Information about Payor"
* group[=].element[=].target.code = #Coverage.payor					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[=].display = "A.2.4.3 - Coverage comment"
* group[=].element[=].target.code = #Coverage.comment					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Body.coverage.comment
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageAppointmentCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-appointment"
* group[=].element[+].code = #Body.Appointment
* group[=].element[=].display = "A.2.5 - Information about appointment"
* group[=].element[=].target.code = #Composition.extension:basedOn:order					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[=].target.comment = "Composition.section:sectionAppointment.entry.ofType(Appointment)"	
* group[=].element[+].code = #Appointment.identifier
* group[=].element[=].display = "A.2.5.1 - Identifier of appointment"
* group[=].element[=].target.code = #Composition.appointment.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Appointment.status
* group[=].element[=].display = "A.2.5.2 - Status of appointment"
* group[=].element[=].target.code = #Composition.appointment.status
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Appointment.description
* group[=].element[=].display = "A.2.5.3 - Description of appointment"
* group[=].element[=].target.code = #Composition.appointment.description
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Appointment.dateTime
* group[=].element[=].display = "A.2.5.4 - Date Time"
* group[=].element[=].target.code = #Composition.appointment.created					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Appointment.examDuration
* group[=].element[=].display = "A.2.5.5 - Duration of appointment"
* group[=].element[=].target.code = #Composition.appointment.minutesDuration					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Appointment.comment
* group[=].element[=].display = "A.2.5.6 - Comment about appointment"
* group[=].element[=].target.code = #Composition.appointment.comment					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Appointment.patientInstruction
* group[=].element[=].display = "A.2.5.7 - Instructions for the patient"
* group[=].element[=].target.code = #Composition.appointment.patientInstruction					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Appointment.address
* group[=].element[=].display = "A.2.5.7 - Address of the workplace"
* group[=].element[=].target.code = #Composition.appointment.Location.address					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/SpecimenInformationCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-specimen"
* group[=].element[+].code = #Body.SpecimenInformation
* group[=].element[=].display = "A.2.7 - Speciment information"
* group[=].element[=].target.code = #Composition.extension:basedOn:order					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[=].target.comment = "Composition.section:sectionSpecimen.entry.ofType(Specimen)"
* group[=].element[+].code = #Specimen.identifier
* group[=].element[=].display = "A.2.7.1 - Identifier of specimen"
* group[=].element[=].target.code = #Composition.specimen.identifier
* group[=].element[=].target.display = "Identifier of specimen"
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Specimen.species	
* group[=].element[=].display = "A.2.7.2 - Species of animal patient"
* group[=].element[=].target.code = #Composition.specimen.subject.species
* group[=].element[=].target.display = "Species of animal patient"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.material	
* group[=].element[=].display = "A.2.7.3 - Type of material"
* group[=].element[=].target.code = #Composition.specimen.type
* group[=].element[=].target.display = "Type of material"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.collectionDate	
* group[=].element[=].display = "A.2.7.4 - Date and time of collection"
* group[=].element[=].target.code = #Composition.specimen.collection.collectionDate
* group[=].element[=].target.display = "Date and time of collection"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.transportDate	
* group[=].element[=].display = "A.2.7.5 - Date and time of transport"
* group[=].element[=].target.code = #Composition.specimen.collection.receivedTime
* group[=].element[=].target.display = "Date and time of commencement of transport of the sample to the laboratory"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.type
* group[=].element[=].display = "A.2.7.6 - Sample type"
* group[=].element[=].target.code = #Composition.specimen.type
* group[=].element[=].target.display = "Entities collected for examination."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.anatomicLocation
* group[=].element[=].display = "A.2.7.7 - Anatomic location"
* group[=].element[=].target.code = #Composition.specimen.collection.bodySite
* group[=].element[=].target.display = "Anatomic location (body location, laterality) where the material is collected"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.morphology
* group[=].element[=].display = "A.2.7.8 - Morphology"
* group[=].element[=].target.code = #Composition.specimen.collection.extension:bodySite:bodyStructure.morphology
* group[=].element[=].target.display = "Morphological abnormalities of the anatomical location where the material is taken, for example wound, ulcer."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.instrument
* group[=].element[=].display = "A.2.7.9 - Instrument"
* group[=].element[=].target.code = #Composition.specimen.subject
* group[=].element[=].target.display = "Device, instrument, physical object (drain, electrode, catheter, etc.)."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.procedure
* group[=].element[=].display = "A.2.7.10 - Collection procedure"
* group[=].element[=].target.code = #Composition.specimen.collection.method
* group[=].element[=].target.display = "Sampling procedure - for cases where it is relevant to the results."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.sourceDevice
* group[=].element[=].display = "A.2.7.11 - Source Device"
* group[=].element[=].target.code = #Composition.specimen.subject.type
* group[=].element[=].target.display = "If the material is not collected directly from the patient but comes from a patient-related object, e.g. a catheter"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Device or Location"
* group[=].element[+].code = #Specimen.samplingPoint
* group[=].element[=].display = "A.2.7.12 - Sampling point"
* group[=].element[=].target.code = #Composition.specimen.subject.type
* group[=].element[=].target.display = "The area where the material was collected; refers to the environment, not the patient."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Location"
* group[=].element[+].code = #Specimen.Note
* group[=].element[=].display = "A.2.7.13 - Note"
* group[=].element[=].target.code = #Composition.specimen.note
* group[=].element[=].target.display = "Note on the material in free text"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.container
* group[=].element[=].display = "A.2.7.14 - Container"
* group[=].element[=].target.code = #Composition.specimen.container
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.container.type
* group[=].element[=].display = "A.2.7.14.1 - Type"
* group[=].element[=].target.code = #Composition.specimen.container.type
* group[=].element[=].target.display = "Type of sampling container - tube, sampling bag, etc. including chemical additives."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.container.count
* group[=].element[=].display = "A.2.7.14.2 - Count"
* group[=].element[=].target.code = #Composition.specimen.container.specimenQuantity
* group[=].element[=].target.display = "Number of containers with one identical sample (e.g. in case the sample volume does not fit into one container)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.container.deviceId
* group[=].element[=].display = "A.2.7.14.3 - Device id"
* group[=].element[=].target.code = #Composition.specimen.container.extension:Device:identifier
* group[=].element[=].target.display = "Unique machine-readable container identifier."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.container.label
* group[=].element[=].display = "A.2.7.14.4 - Label"
* group[=].element[=].target.code = #Composition.specimen.collector.description
* group[=].element[=].target.display = "Human readable container identifier."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.additionalData
* group[=].element[=].display = "A.2.7.15 - Additional formalised sample data"
* group[=].element[=].target.code = #Composition.specimen.extension:additionalData
* group[=].element[=].target.display = "Additional formalised sample data"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.additionalData.date
* group[=].element[=].display = "A.2.7.15.1 - Date"
* group[=].element[=].target.code = #Composition.specimen.extension:additionalData.data
* group[=].element[=].target.display = "Date of discovery of the data, to be indicated if different from the date of the order."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.additionalData.code
* group[=].element[=].display = "A.2.7.15.2 - Code"
* group[=].element[=].target.code = #Composition.specimen.extension:additionalData.code
* group[=].element[=].target.display = "Observation code identifying the significance of the data (collection time interval, volume of material collected; density; condition of material, type of collection, etc.)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.additionalData.value
* group[=].element[=].display = "A.2.7.15.3 - Data value"
* group[=].element[=].target.code = #Composition.specimen.extension:additionalData.value
* group[=].element[=].target.display = "Data value including unit of measurement."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.collector
* group[=].element[=].display = "A.2.7.16 - Collector"
* group[=].element[=].target.code = #Composition.specimen.collector
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.collector.identifier
* group[=].element[=].display = "A.2.7.16.1 - Identifier of the sample collector"
* group[=].element[=].target.code = #Composition.specimen.collector.identifier
* group[=].element[=].target.display = "Identifier of the sample collector – this refers either to an internal identifier assigned by the healthcare provider or (preferably) a national ID of the healthcare professional, such as a license or registration number. If the sample is not collected by a healthcare professional but, for example, by the patient themselves, an appropriate personal identifier should be used instead."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.collector.name
* group[=].element[=].display = "A.2.7.16.2 - Name of the sample collector"
* group[=].element[=].target.code = #Composition.specimen.collector.name
* group[=].element[=].target.display = "Name of the sample collector"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.collector.contact
* group[=].element[=].display = "A.2.7.16.3 - Contact information of the sample collector"
* group[=].element[=].target.code = #Composition.specimen.collector.address
* group[=].element[=].target.display = "Contact information of the sample collector (address and telecommunication data)."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Specimen.collector
* group[=].element[=].display = "A.2.7.16.4 - Organization of the sample collector"
* group[=].element[=].target.code = #Composition.specimen.collector.organization
* group[=].element[=].target.display = "Organization of the sample collector (healthcare provider)."
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/ObservationImageCz"
* group[=].element[+].code = #Body.SupportingInformation.biometricData
* group[=].element[=].display = "A.3.1.1 - Biometric data"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.supportingInfo.observation			
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/bodyweightcz"
* group[=].element[+].code = #Body.SupportingInformation.weight
* group[=].element[=].display = "A.3.1.2 - Weight"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.supportingInfo.bodyWeight			
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Body.SupportingInformation.weight.valueQuantity
* group[=].element[=].display = "A.3.1.2.1 - Value Quantity"
* group[=].element[=].target.code = #Composition.sectionSupportingInformation.bodyWeight.valueQuantity
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Body.SupportingInformation.weight.code
* group[=].element[=].display = "A.3.1.2.2 - Code"
* group[=].element[=].target.code = #Composition.sectionSupportingInformation.bodyWeight.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Body.SupportingInformation.weight.dateTime
* group[=].element[=].display = "A.3.1.2.3 - DateTime"
* group[=].element[=].target.code = #Composition.sectionSupportingInformation.bodyWeight.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/bodyheightcz"
* group[=].element[+].code = #Body.SupportingInformation.height
* group[=].element[=].display = "A.3.1.3 - Height"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.supportingInfo.bodyHeight			
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Body.SupportingInformation.height.valueQuantity
* group[=].element[=].display = "A.3.1.3.1 - Value Quantity"
* group[=].element[=].target.code = #Composition.sectionSupportingInformation.bodyHeight.valueQuantity
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Body.SupportingInformation.height.code
* group[=].element[=].display = "A.3.1.3.2 - Code"
* group[=].element[=].target.code = #Composition.sectionSupportingInformation.bodyHeight.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Body.SupportingInformation.height.dateTime
* group[=].element[=].display = "A.3.1.3.3 - DateTime"
* group[=].element[=].target.code = #Composition.sectionSupportingInformation.bodyHeight.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/ConditionImageCz"
* group[=].element[+].code = #Body.SupportingInformation.otherRelevantClinicalInformation
* group[=].element[=].display = "A.3.1.4 - Other Relevant Clinical Information"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.supportingInfo.condition			
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Body.SupportingInformation.otherRelevantClinicalInformation.code
* group[=].element[=].display = "A.3.1.4.1 - Code"
* group[=].element[=].target.code = #Composition.sectionSupportingInformation.condition.code.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Body.SupportingInformation.otherRelevantClinicalInformation
* group[=].element[=].display = "A.3.1.4.2 - Text"
* group[=].element[=].target.code = #Composition.sectionSupportingInformation.condition.code.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-MedicationStatement"
* group[=].element[+].code = #Body.SupportingInformation.medication
* group[=].element[=].display = "A.3.1.5 - Medication"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.supportingInfo.medication			
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Medication.identifier
* group[=].element[=].display = "A.3.1.5.1 - Identifier of medication"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.supportingInfo.medication.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Medication.code
* group[=].element[=].display = "A.3.1.5.2 - Code of Medication"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.supportingInfo.medication.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Medication.amount
* group[=].element[=].display = "A.3.1.5.3 - Amount of Medication"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.supportingInfo.medication.amount
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/DeviceUseStatementCz"
* group[=].element[+].code = #Body.SupportingInformation.implant
* group[=].element[=].display = "A.3.1.6 - Implant"
* group[=].element[=].target.code = #Composition.medicalDevices
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Body.SupportingInformation.implant.type
* group[=].element[=].display = "A.3.1.6.1 - Type"
* group[=].element[=].target.code = #Composition.medicalDevices.device.type
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Body.SupportingInformation.implant.identifier
* group[=].element[=].display = "A.3.1.6.2 - Identifier"
* group[=].element[=].target.code = #Composition.medicalDevices.device.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Body.SupportingInformation.implant.model
* group[=].element[=].display = "A.3.1.6.2 - Model"
* group[=].element[=].target.code = #Composition.medicalDevices.device.modelNumber
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Body.SupportingInformation.implant.bodyPart
* group[=].element[=].display = "A.3.1.6.2 - Body Part"
* group[=].element[=].target.code = #Composition.medicalDevices.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ImageSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-allergyIntolerance"
* group[=].element[+].code = #Body.SupportingInformation.allergyIntolerance
* group[=].element[=].display = "A.3.1.7.1 - Allergy intolerance"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.supportingInfo.allergyIntolerance			
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #AllergyIntolerance.identifier
* group[=].element[=].display = "A.3.1.7.1.1 - Identifier of allergyIntolerance"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.supportingInfo.allergyIntolerance.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #AllergyIntolerance.clinicalStatus
* group[=].element[=].display = "A.3.1.7.1.2 - Clinical status of allergyIntolerance"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.supportingInfo.allergyIntolerance.clinicalStatus
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #AllergyIntolerance.type
* group[=].element[=].display = "A.3.1.7.1.3 - Type of allergyIntolerance"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.supportingInfo.allergyIntolerance.type
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #AllergyIntolerance.category
* group[=].element[=].display = "A.3.1.7.1.4 - Category of allergyIntolerance"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.supportingInfo.allergyIntolerance.category
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #AllergyIntolerance.code
* group[=].element[=].display = "A.3.1.7.1.5 - Code of allergyIntolerance"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.supportingInfo.allergyIntolerance.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #AllergyIntolerance.note
* group[=].element[=].display = "A.3.1.7.1.6 - Note of allergyIntolerance"
* group[=].element[=].target.code = #Composition.sectionOrderInformation.order.supportingInfo.allergyIntolerance.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/OrderDataElementsCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/ImagingOrderInformationCz"
* group[=].element[+].code = #Body.OrderDataElements
* group[=].element[=].display = "A.3.2 - Order/examination data elements."
* group[=].element[=].target.code = #Composition.extension:basedOn:order			
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Composition.section:sectionOrderInformation.entry.ofType(ImagingOrderInformationCz)"
* group[=].element[+].code = #OrderDataElements.code
* group[=].element[=].display = "A.3.2.1 - Examination code"
* group[=].element[=].target.code = #Composition.ServiceRequest.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #OrderDataElements.name
* group[=].element[=].display = "A.3.2.2 Name of the examination"
* group[=].element[=].target.code = #Composition.ServiceRequest.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #OrderDataElements.modality
* group[=].element[=].display = "A.3.2.3 - Modality"
* group[=].element[=].target.code = #Composition.ServiceRequest.orderDetail.modality
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #OrderDataElements.bodyPart
* group[=].element[=].display = "A.3.2.4 - Body Part"
* group[=].element[=].target.code = #Composition.ServiceRequest.orderDetail.bodyPart
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #OrderDataElements.laterality
* group[=].element[=].display = "A.3.2.5 - Laterality"
* group[=].element[=].target.code = #Composition.ServiceRequest.orderDetail.laterality
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #OrderDataElements.note
* group[=].element[=].display = "A.3.2.6 - Examination note"
* group[=].element[=].target.code = #Composition.ServiceRequest.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/OtherSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-carePlanImage"
* group[=].element[+].code = #Body.PlannedCareOrdersCz
* group[=].element[=].display = "A.3.3 - Order/examination data elements."
* group[=].element[=].target.code = #Composition.carePlan			
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Composition.section:sectionCarePlan"
* group[=].element[+].code = #PlannedCareOrdersCz.identifier
* group[=].element[=].display = "A.3.3.1 - Identifier"
* group[=].element[=].target.code = #Composition.carePlan.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #PlannedCareOrdersCz.name
* group[=].element[=].display = "A.3.3.2 Title of the observation"
* group[=].element[=].target.code = #Composition.carePlan.title
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/OtherSupportingInformationCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/ObservationImageCz"
* group[=].element[+].code = #Body.OtherSupportingInformationCz
* group[=].element[=].display = "A.3.4 - Order/examination data elements."
* group[=].element[=].target.code = #Composition.ObservationImageCz			
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Composition.section:sectionObservation"
* group[=].element[+].code = #OtherSupportingInformationCz.identifier
* group[=].element[=].display = "A.3.4.1 - Identifier"
* group[=].element[=].target.code = #Composition.ObservationImageCz.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #OtherSupportingInformationCz.name
* group[=].element[=].display = "A.3.4.2 Title of the observation"
* group[=].element[=].target.code = #Composition.ObservationImageCz.title
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
