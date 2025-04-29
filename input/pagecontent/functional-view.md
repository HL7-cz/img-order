### Actors

<br>

**Referring Physician**

Alias: Requesting Physician, Requisitioner, Ordering Physician, Clinician. This is the physician who orders the examination at the imaging department. This physician has the professional right to request the examination and is also the one to whom the results of the imaging examination are sent (the imaging report and possibly the images themselves).

**Patient**

A physical person undergoing medical examination, in this context, the person for whom the imaging referral is issued.

**Sending NIS/RIS**

The information system (IS) of the ordering entity, where the referral for the imaging examination is created. It provides full support during its completion, automatically fills in known fields and offers assistance (such as selection from dropdown lists, etc.) for specifying the values needed for the different parts of the referral.

**Receiving NIS/RIS**

The IS of the receiving healthcare facility, where the imaging referral is received and where the examination will be conducted or redirected to another specialized department.

**Processor**

The healthcare facility, the provider of medical care, where the referral is received and processed. In the case of a specific referral, the Processor is determined on the referral according to the requirements of the ordered examination.

**Additional Recipient of the Report**

A physician who, besides the Ordering Physician, will receive the report as the result of the imaging examination. By law, the report is typically sent to the Ordering Physician. However, for medical necessity, the report can also be directed to another healthcare professional besides the Ordering Physician, known as the Additional Recipient of the Report.

### Use Cases

---

#### Use Case: Non-specific Order

##### Scenario: Chest X-ray

The referring physician creates an order for a chest X-ray, either by selecting the specific procedure "Chest X-ray" or by combining the modality X-ray (DX, direct radiography) with the body part chest. In addition to specifying the type of examination, the order must include the patient's height, weight, mobility restrictions, diagnosis, and the clinical question the examination aims to answer. The physician does not specify "sent to" and is indifferent to which healthcare facility performs the examination. The patient decides where to present the order and can either be examined immediately or scheduled for a later appointment.

The order intake requires the NIS/RIS to have the capability to generalize the requested examination to the level of procedures performed, taking into account variations between modalities.

> In the scenario described above, the clinician can send a request for an X-ray of the lungs, from which the SNOMED CT code can be used to deduce its parent category, which is an X-ray of the chest. This allows the specific requested examination (lung X-ray) to be translated into a standard examination (chest X-ray). As a result, even an unusual request for a heart X-ray can be processed, as its parent category is also a chest X-ray.

Compared to the current order form, the information on patient mobility is new and should default to "ambulatory" unless specified otherwise by the referring physician. For patients with reduced mobility (wheelchair, bed), the healthcare facility will see in advance whether it can accommodate the examination (appropriate projections for pathology assessment, barriers like lack of access, insufficient staff for patient positioning, etc.).

##### Scenario: Abdominal Ultrasound

The referring physician creates an order for an abdominal ultrasound, including all mandatory information. Biometric data (weight, height) are not required for ultrasound examinations. If no specific location for the examination is required, the physician again does not need to specify "sent to", leaving it to the patient to choose where to arrange the examination.

The information on patient mobility is new, serving similar purposes as above (patient access to modality, barrier-free access, time required, etc.).

##### Scenario: Abdominal CT

The referring physician creates a referral for an abdominal CT scan, including all the required information. If the examination is not typically performed without intravenous contrast (such as a CT of the brain, skeleton, kidneys for kidney stones), it is necessary to provide additional relevant information that may affect the examination (e.g. renal failure, patient agitation) or contraindicate the intravenous administration of contrast material (such as allergies or medications that interact with iodine-based contrast agents). If there is no specific location required for the examination, the referral does not need to specify "referred to" (as mentioned above and below).

Compared to the existing referral system, the new addition is information about the patient's mobility (for example, due to the absence of a barrier-free entrance, lack of staff for positioning or transferring the patient, time constraints, etc.).

In addition to the referring physician (e.g. a general practitioner), the report may be relevant for other specialists the patient is scheduled to see. Therefore, we propose, in addition to the "Encounter/clinical event" block ([A.2.3](StructureDefinition-ClinicalEventCz.html)), which automatically refers to the outpatient examination with the general practitioner, to also offer the option to enter information about other appointments, such as with a clinician – gastroenterologist. For this purpose, the [A.3.3.](StructureDefinition-PlannedCareOrdersCz.html) "Planned Care Orders" block can be used (where information about scheduled examinations can be entered, providing, in terms of functional specification, details on when and where the patient should attend for follow-up care) or possibly the [A.3.4](StructureDefinition-OtherSupportingInformationCz.html) block for other supporting information.

##### Scenario: Mammography

The referring physician creates an order for a mammography, including all mandatory information. For mammography, biometric data like weight and height are not required because they are not needed for radiation dose calculations.

The order can be either specific or non-specific and mobility information is generally rare but set to "ambulatory" by default to reduce additional work for the referring physician.

---

#### Use Case: Specific Order

##### Scenario: MR with a Targeted Protocol

The referring physician is in agreement with a specific healthcare facility or examining physician to conduct examinations on patients using a predefined protocol (e.g. dynamic examination of the temporomandibular joints). As a result, the referring physician fills in "referred to" with the specific facility in mind and expects the referral to be handled by the designated healthcare facility. For such a transfer of the referral, a point-to-point transfer using the "PUSH" method could be employed. Upon receipt, further coordination of the examination would then fall under the responsibility of the examining healthcare facility.

In addition to the mandatory information, the referral requires filling out additional relevant details that could affect or contraindicate the examination or the administration of contrast agents (such as patient agitation, claustrophobia, pregnancy, renal failure, or implants in the body). Biometric data are mandatory for MRI due to the need to plan the dosage of potential contrast administration and to ensure compatibility between the patient's size and the MRI machine (table length, table weight capacity, gantry diameter).

Compared to the existing referral form, the new addition is information regarding the patient's mobility (for example, due to the absence of a barrier-free entrance, a lack of staff for positioning or transferring the patient, etc.).

##### Scenario: Rejected Specific Order

The referring physician may express a preference for which healthcare facility the examination should be conducted at; however, if this facility is unable to perform the examination within the desired timeframe (due to reasons such as machine maintenance, other technical downtimes, or the examination no longer being offered), the designation on the referral can be disregarded. In such cases, the examination can be conducted at any available healthcare facility.

##### Scenario: Examination at a Different Facility

Since the right to choose one's doctor freely is established by law, a patient may decide to ignore the recommendation of a specific healthcare facility for their examination and opt to go "elsewhere". In such a case, the chosen healthcare facility must have the capability to accept a referral that was originally intended for a different facility.

##### Scenario: PET/CT

The referring physician creates a referral for a PET/CT scan (selecting both PET and CT from the [DICOM modalities](index.html#modality-table)), which is usually conducted at a collaborating facility. In addition to the mandatory information, the physician includes details that could influence the course of the examination and the administration of iodinated contrast material. Although the referral can be addressed to the collaborating facility, the examination can also be performed at another healthcare facility that offers this examination, according to the patient's right to choose freely.

In the clinical information section ([A.3.1](StructureDefinition-OtherSupportingInformationCz.html)), it is appropriate to include details that could affect the interpretation of the examination, such as the date of the last radiotherapy or chemotherapy session, the date of the last surgery, or the date of the last local ablation treatment, etc.

This approach can also be applied to PET/MR examinations.

##### Scenario: Peripheral Artery Angioplasty

The referring physician creates a referral for peripheral artery angioplasty, which is typically performed based on prior agreement ([scenario 3.2.3.1](functional-view.html#scenario-received-general-consultation), general consultation, specifics of which are not part of this document) at the collaborating facility. In addition to the mandatory information, the referral includes details that could affect the procedure and the administration of iodinated contrast material, including coagulation parameters such as INR and platelet count.

The referral will be addressed to the facility that performs the procedure. It is possible to attach the results of previous examinations to the referral, particularly any written statements approving the procedure (e.g. records from a multidisciplinary committee or consultation with another specialty). Additionally, this referral includes information about laterality, which must be conveyed. For example, the angioplasty of the left anterior tibial artery can be specified (SNOMED code 312643005 with the specific "left" code 20141000087109).

The second variant provides a more precise code that should be used. However, it may be necessary to develop a mechanism or concept that derives the second code from the first code and the specified left-sided laterality. The exact implementation will need to be validated with a functional prototype to ensure accuracy and effectiveness in practice.

This procedure can also be applied to other vascular or non-vascular interventions.

---

#### Use Case: Consultation

##### Scenario: Received General Consultation

The referring physician needs to consult with the healthcare facility regarding the appropriate diagnostic imaging for a specific pathology. This may involve discussing the optimal imaging modality, timing for follow-up, specificity and sensitivity of the examination in the given case and the use of contrast material. Alternatively, the referring physician may wish to consult on the appropriateness of an indication or the feasibility of an interventional procedure, such as biliary drainage. This would involve determining whether the procedure is suitable for the patient based on previous examinations, assessing whether an access route exists and confirming that there are no contraindications for the procedure.

In these cases, since the output is not an imaging method but rather a consultation text, it is recommended to use a general consultation request of type K (the specification of which is not part of this document). It is advisable that the NIS (Nursing Information System) directly enables switching between a request for imaging examination and a general consultation, so that it is not necessary to re-enter information that has already been provided (such as the patient's medical history or clinical questions).

For a referral for imaging examination, selecting the examination modality according to the DICOM code is required (DICOM does not include a simple consultation), which means it is not ideal for this use case. Instead, relying on a general consultation request form that facilitates non-imaging consultations would be more appropriate for situations where only a textual consultation is needed, allowing for seamless communication and coordination without the constraints of imaging-specific codes.

##### Scenario: Rejected Indication

In cases where the examination is not performed due to medical or technical reasons, or if the patient did not attend or refused the indicated examination (e.g. an X-ray of the skull to rule out intracranial bleeding, claustrophobia in MRI, space limitations due to the patient's size, or the patient did not attend the examination due to death at the healthcare facility), a traditional referral is used. This referral includes the anticipated imaging modality according to DICOM, but does not result in an imaging examination. Instead, it generates a consultation text, which serves as the report of the examination outcome.

This approach allows for documentation and communication regarding the circumstances and reasons for the non-performance or refusal of the examination, ensuring that necessary clinical information is captured and shared with relevant healthcare professionals.

---

#### Use Case: Order Acceptance by Facilities Using a More General Examination List

##### Scenario

When the referring physician creates a referral for an MRI of the pituitary gland in their system, but the examining healthcare facility operates with a broader categorization, allowing only an order for a brain MRI, the referral must be able to be accepted based on SNOMED CT hierarchy. This structure allows the system to infer that the concept of an MRI of the pituitary gland is a subset of an MRI of the brain and thus converts the referral accordingly.

In this scenario, it is crucial for the examining facility to clearly see the original coded information, including its textual representation, indicating that the original request was for an MRI of the pituitary gland. This transparency ensures that the healthcare professionals conducting the MRI are aware of the specific focus and clinical intent of the examination, allowing them to tailor their approach to meet the patient's diagnostic needs effectively.

The referring physician's system must support the complete catalog of examinations and body parts. However, it is acceptable for the system to offer only a subset, especially in the case of a directed referral, where the examining healthcare facility could and should publish a list of examinations they perform (a whitelist) or do not perform (a blacklist), as well as the modalities they have available.

This approach ensures that the referring physician can make informed and efficient choices tailored to the capabilities and offerings of the designated healthcare facility. It promotes a smoother workflow by aligning referral options with the actual services available at the facility, thus minimizing miscommunication and improving the coordination of patient care.