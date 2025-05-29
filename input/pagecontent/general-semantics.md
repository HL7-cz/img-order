
In the field of medical imaging, the Digital Imaging and Communications in Medicine (DICOM) protocol and format are standardly used for data archiving and exchange. This defines, for example, individual imaging modalities and is used for data archiving in the Picture Archiving and Communication System (PACS).

DICOM is linked to the SNOMED-CT clinical terminology system. Other standards and nomenclatures are shared by imaging methods with other patient documentation documents: MKN-10 (national representation of international ICD-10), HL7, LOINC and the like.

### General Semantics in National Context

#### Entities

---

**Patient**

Information about the individual receiving healthcare services. This profile defines the structure of the patient, localizing fundamental concepts, including identifiers and terminology, for use in the Czech context.

**Healthcare Provider**

Information about the individual providing healthcare services. The profile identifies the healthcare provider within an organization, and it is possible to assign a role to the person delivering the healthcare service, which can be defined through one of two coding systems: KRZP or SNOMED.

**Healthcare Service Provider**

This profile defines the way organizations are represented in the context of the Czech national Imaging Order. In this document, it is abbreviated as healthcare facility.

#### Objects

---

**Medical Device**

This profile includes constraints applied to the Device within the context of the Czech national Imaging Order. It describes the device in the role of "observer" or "performer". This profile specifies the requirements for the Device used during examinations.

**Medical Product**

This profile presents the requirements for the Device within the context of the Czech national Imaging Order. The type of medical product is preferably specified using a SNOMED CT code. The absence of information or the absence of a medical product is explicitly indicated using codes from the following registry: [Absent and Unknown Data - IPS](https://fhir.org/guides/stats2/codesystem-hl7.fhir.uv.ips-absent-unknown-uv-ips.html).

**Components**

In the context of this document, a component refers to a part of the data structure that is common to multiple objects. For example, biometric data such as weight and height should be consistently used and defined in both discharge and outpatient reports, as well as in imaging examination order forms.

### Content

#### Order Form Header

**Patient Identification**

This section contains records about the patient such as his identifiers, name or address.

**Patient Contact Information**

The section contains contact information for people who can provide additional information about the patient. There may also be a contact for another doctor. This information is especially necessary for patients with rare diseases.
The type of contact person distinguishes between emergency contacts, legal representatives and other persons related to patients. This is a definition of contact persons who can be contacted to prepare the patient for the examination or in other cases.

**Health Insurance**

The patient's health insurance, which may not necessarily be the payer for completing the given request form.

**Coverage**

Contains information on how the examination will be paid.

**Author**

Contains identification of the healthcare professional or other person ordering the examination.

**Requested Performer**

Contains information about the person who will process the request form (the processor will not be specified for unaddressed requests).

**Additional Recipient**

May contain the identification of additional recipients of the finding in addition to the ordering party.

**Document Metadata**

Contains additional information about the request document such as: Document administrator.

**Digital Signatures**

The content of this section is the electronic signature of the document according to Act `327/2011 §54a`.

#### Body of the Order Form

**Order Information**

This mandatory section includes the required order identifier ([A.2.1.1](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.identifier)) and the date and time of its creation ([A.2.1.2](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.dateTime)) — if the information section is established, it must contain these details. Optional items include the urgency of the order (from the perspective of Indicating Physician) expressed by an international code from the HL7 system ([Request Priority](https://hl7.org/fhir/valueset-request-priority.html)) ([A.2.1.4](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.urgency)), which can have values such as routine (normal priority), urgent (urgent case), asap (as soon as possible) and stat (status iminens / STATIM). Another optional item is the requested date and time of the examination ([A.2.1.3](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.requestedExecdateTime)), which does not refer to the actual booking date but opens the possibility, for example, to send an order form with a request for scheduling on the day when the patient has an outpatient clinical check-up.

Additional Requirements / Detailed Examination Specifications ([A.2.1.5](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderDetails.orderText)) is another optional field that can contain extra information for the order. This could include, for example, the Referring physician request for using a specific agreed-upon protocol or conducting the examination on a specific MRI machine.

The final optional item is information for the patient, such as fasting requirements, medication discontinuation, advice on claustrophobia, etc.

**Justification for Examination (Reason for Order)**

This required section includes the indicative diagnosis ([A.2.2.1](StructureDefinition-ImageOrderInformationCz-definitions.html#key_ImageOrderInformationCz.orderReason.problem)), which is required by health insurance companies for service reimbursement. Additional items include the clinical question (an interrogative sentence that should end with a question mark and should be answerable based on the imaging examination) which can also be assigned a SNOMED CT code, and the reason for the order (essentially a brief summary, again with the option to encode the information). The advantage of using a code in the future could be the integration with existing information in the Indicating Physician's system within the NIS (Nursing Information System), thereby eliminating the need to re-enter this information.

**Examination Appointment (Visit)**

This mandatory section includes confirmed information from the examining healthcare facility about the appointment, such as when the patient is scheduled, where they need to go, and may include free text comments (e.g. MRI on the 2nd floor of the main building). The use of these structures assumes that it will be possible, after the order has been received by the examining healthcare facility, to "supplement" this information or create an updated version of the order form that includes this information.

**Clinical Information (Anamnesis)**

This required section includes biometric data (weight and height), other clinically relevant information in free text or optionally with an MKN-10 code (e.g. claustrophobia in an MRI order) or Orphacode, medication information (relevant, for example, before a contrast examination on CT), implant information (for MRI) and urgent information (allergies, intolerances or any other warnings in free text). The urgent information module is a component common to other models. Additional formalized data can help convey any information about the patient (e.g. week of gestation before a gynecological ultrasound examination). Additionally, clinical information should include any patient limitations (e.g. wheelchair-bound, bedridden, blind, hearing impaired).

**Order/Examination Data Elements**

This required section includes the data elements of the requested examination and it consists of the six most important items (the entire block can appear multiple times, e.g. for MRI of the brain and cervical spine):

1) Examination Code – SNOMED CT code representing the examination.

2) Examination Name – Optional text independent of coded data.

3) Modality – Based on the international DICOM modalities registry and/or its SNOMED CT equivalent. A limitation is that, for example, an X-ray can be performed in three ways (DICOM modalities):

   - RTG – Conventional film image, which is then scanned
   - Computed radiography (CR) from a machine with indirect digitalization
   - DX from a machine with direct digitalization

        > Given the decline of RTG and CR, it can be assumed for order purposes that the requested examination is DX. If the examination is performed with a different X-ray modality, it should not be an issue, as secondary modalities would also be mapped to X-ray/plain films. The mapping of DICOM attributes is handled by the [dicom_modality table](index.html#modality-table).

4) Body Part – A part of the SNOMED CT registry defined by the DICOM standard. The reason is that the complete set of SNOMED CT values contains general body parts (e.g. tendon), which are not useful for imaging examinations. We need to know whether the tendon is on the hand or the foot.

5) Laterality – In this case, the use of SNOMED CT values is preferred. When it is not possible to indicate examination of both sides, separate values should be created for the left and right sides.

6) Note – Space for a text note related to the examination.

**Examination Appointment (Visit)**

This required section includes confirmed information from the examining Healthcare Facility about the appointment, such as when the patient is scheduled, where they should go, and may include free text comments (e.g. MRI on the 2nd floor of the main building). The use of these structures assumes that, after the examination request is received by the Healthcare Facility, it will be possible to "supplement" or update the order to include this information, thereby creating an updated version of the order form.

**Attachments**

This optional section allows for the inclusion of any additional sources of information, such as outpatient reports, discharge summaries (in digital form or even just a scan), data provided by the patient, etc. While this section is not mandatory, it provides the flexibility to attach various types of files or documents to supplement the order form with relevant information.

**Sample Information (Specimen)**

This required section is consistent with laboratory procedures. The term "container" refers to any kind of "packaging" for the sample and does not indicate a specific device. In radiology, it sometimes occurs that we image a biopsy sample (e.g. obtained from a breast biopsy or intraoperatively). Although most facilities do not formally create an order for this type of image, it is process-wise appropriate to account for this possibility. Therefore, we propose including this section in the standard, even though we anticipate it may not be widely used initially.

**Payment**

This section allows for specification if part of the examination is covered differently than the majority of it (e.g. special reconstructions not covered by insurance). While this section is required to be present, it is not mandatory to fill it out, meaning it can be left blank if not applicable.

A free text comment on payment can be used when there is a need to specify which part of the care is covered by a different payer. This allows for clarity and transparency regarding the financial responsibilities and arrangements associated with the provided healthcare services.

**Clinical Encounter (Encounter)**

This optional section allows for linking the order form to a specific clinical encounter, such as an outpatient visit during which the order was created. Although this information is not crucial for the examination itself, it provides a way to connect the order with outpatient or other reports that may contain relevant information not included on the order form by the clinician. This linkage can enhance the context and understanding of the patient's clinical situation and ensure all pertinent details are considered in the diagnostic or treatment process.

**Planned care orders**

This section contains references to scheduled care plan orders that follow from this order form. Besides the ID, it should include the name of the appointment, with other details being automatically populated from the referenced order. For example, an entry may state "Consultation in Neurosurgery" and by using the ID, one can determine that it is scheduled at the Central Military Hospital on March 15, 2040, at 16:15. This facilitates efficient tracking and management of the patient’s care pathway.

**Other Supporting Information**

This section is intended for additional supportive information, such as specifying when the results will be needed (for subsequent care, surgery, etc.). It is included to enable linking not only to follow-up appointments or outpatient examinations (as facilitated by the appointment section above) but also to other significant events, such as a scheduled surgery date. Similar to the previous example, necessary details should be retrieved based on an ID, allowing the user to see, for instance, "Gallbladder surgery on March 16, 2040, at VFN Prague". This helps ensure relevant scheduling and planning information is readily accessible to healthcare providers.