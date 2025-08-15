### Sections and content

The document is subdivided in a set of required sections. Sections are required instead of optional to make it clear that when no data is present, why that is the case, which is expressed in `composition.section.emptyReason`.

### Document structure

The Imaging order holds the following sections in this order:

#### Imaging Order Header

General information on the order. Most of the information elements in this part of the order overlap with other clinical orders. The document header includes information on the patient, source organization, author, attester and custodian of the order. 

#### Body of the Imaging Order

**Order Information**

This mandatory section includes the required order identifier ([A.2.1.1](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.identifier)) and the date and time of its creation ([A.2.1.2](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.dateTime)) — if the information section is established, it must contain these details. Optional items include the urgency of the order (from the perspective of Indicating Physician) expressed by an international code from the HL7 system ([Request Priority](https://hl7.org/fhir/valueset-request-priority.html)) ([A.2.1.4](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.urgency)), which can have values such as routine (normal priority), urgent (urgent case), asap (as soon as possible) and stat (status iminens / STATIM). Another optional item is the requested date and time of the examination ([A.2.1.3](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.requestedExecdateTime)), which does not refer to the actual booking date but opens the possibility, for example, to send an order form with a request for scheduling on the day when the patient has an outpatient clinical check-up.

Additional Requirements / Detailed Examination Specifications ([A.2.1.5](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.orderText)) is another optional field that can contain extra information for the order. This could include, for example, the Referring physician request for using a specific agreed-upon protocol or conducting the examination on a specific MRI machine.

The final optional item is information for the patient, such as fasting requirements, medication discontinuation, advice on claustrophobia, etc.

**Justification for Examination (Clinical question)**

This required section includes the indicative diagnosis ([A.2.2.1](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderReason.problem)), which is required by health insurance companies for service reimbursement. Additional items include the clinical question (an interrogative sentence that should end with a question mark and should be answerable based on the imaging examination) which can also be assigned a SNOMED CT code, and the reason for the order (essentially a brief summary, again with the option to encode the information). The advantage of using a code in the future could be the integration with existing information in the Indicating Physician's system within the NIS (Nursing Information System), thereby eliminating the need to re-enter this information.

**Payment (Coverage)**

This section allows for specification if part of the examination is covered differently than the majority of it (e.g. special reconstructions not covered by insurance). While this section is required to be present, it is not mandatory to fill it out, meaning it can be left blank if not applicable.

A free text comment on payment can be used when there is a need to specify which part of the care is covered by a different payer. This allows for clarity and transparency regarding the financial responsibilities and arrangements associated with the provided healthcare services.

**Examination Appointment (Visit)**

This mandatory section includes confirmed information from the examining healthcare facility about the appointment, such as when the patient is scheduled, where they need to go, and may include free text comments (e.g. MRI on the 2nd floor of the main building). The use of these structures assumes that it will be possible, after the order has been received by the examining healthcare facility, to "supplement" this information or create an updated version of the order form that includes this information.

**Care plans**

This section contains references to scheduled care plan orders that follow from this order form. Besides the ID, it should include the name of the appointment, with other details being automatically populated from the referenced order. For example, an entry may state "Consultation in Neurosurgery" and by using the ID, one can determine that it is scheduled at the Central Military Hospital on March 15, 2040, at 16:15. This facilitates efficient tracking and management of the patient’s care pathway.

**Medical Devices (Implants)**

This section contains a list of implants or devices that affect the course of the examination or its interpretation.

**Attachments**

This optional section allows for the inclusion of any additional sources of information, such as outpatient reports, discharge summaries (in digital form or even just a scan), data provided by the patient, etc. While this section is not mandatory, it provides the flexibility to attach various types of files or documents to supplement the order form with relevant information.