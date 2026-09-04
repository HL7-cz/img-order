### Scope

#### Included Areas

This guide covers **eReferral type Z, the Imaging Order**.

An Imaging Order is an order for an examination performed by one of the modalities of the [cz-modality](ValueSet-cz-modality-vs.html)value set, which is based on the modalities of the DICOM standard. Given the cardinality `1..*` of the element `A.3.2.1.3 Modalita` , two modalities may be requested on a single eReferral, typically for hybrid methods such as **PET/CT**, that is `PT` and `CT`.

The most frequently requested modalities are listed in the table below. The complete and binding list is in the value set.

##### Modality Table

| Code    | DICOM          | Czech        |
| ----------------- | ---------------------------- | ------------------------- |
| BMD               | Bone Mineral Densitometry    | Denzitometrie             |
| CT                | Computed Tomography          | CT                        |
| DX                | Digital Radiography          | RTG (skiagrafie)          |
| IO                | Intra-oral Radiography       | Intraorální snímek        |
| MR                | Magnetic Resonance           | MR                        |
| MG                | Mammography                  | Mamografie                |
| NM                | Nuclear Medicine             | Metody nukleární medicíny |
| PX                | Panoramic X-Ray              | OPG                       |
| PT                | Positron Emission Tomography | PET                       |
| RF                | Radiofluoroscopy             | Skiaskopie                |
| US                | Ultrasound                   | UZ                        |
| XA                | X-Ray Angiography            | DSA (angiografie)         |

#### Excluded Areas

This guide does not address the overall ecosystem of eReferrals or the way they are transmitted. Imaging orders outside the radiology and nuclear medicine specialties, for example keratometry, are not included.

The guide further does not cover:

- **the behaviour of the eReferral system** — states and their transitions, interface operations, permissions, notifications and operating conditions are described in the Standard of the eReferral System,
- **the system header of the eReferral** — this guide describes the FHIR Bundle only, see [Home](index.html),
- **clinical scenarios and type-specific content requirements** — they are in the Special Functional Specification of eReferral type Z,
- **reporting and reimbursement of the requested care** — the mapping to the health insurance data interface is in the Special Functional Specification of eReferral type Z.
  
A consultation about a suitable diagnostic method, about the timing of a follow-up or about the feasibility of an interventional procedure is not within the scope of this guide, because its output is not an imaging examination. eReferral type K is used for it, see [HL7 Czech Order Implementation Guide](https://build.fhir.org/ig/HL7-cz/k-order/en/).

### Content

#### Information Models

##### Conceptual view

The skeleton of the logical model is uniform for all types of eReferral and the same element numbers are used in it. An element number, for example `A.1.7`, denotes the same data item regardless of the type of eReferral and regardless of the implementation guide in which it is defined. Logical model items are therefore referenced **by element number and name**, not by model name.

| Number       | Section                                | What it contains                                     | Who defines it           |
| ----------- | ------------------------------------ | ---------------------------------------- | ------------------------- |
| A.1         | Document header                      | Administrative data.                   | common to all types |
| A.2         | Document body                        | Order information and its justification, clinical event, coverage, appointment and specimen information. | common to all types |
| A.3         | Supporting information and data elements | Clinical content specific to the Imaging Order. | type-specific section        |
| A.4         | Presented form            | Human-readable form of the document.         | common to all types |
| A.5         | Attachments                              | Attachments enclosed with the eReferral.            | common to all types |

###### Imaging Order Parts

<figure>
  {% include imgOrder_CIM.svg %}
</figure>

###### Imaging Order Header

<figure>
  {% include imgOrderHead_CIM.svg %}
</figure>

###### Imaging Order Body

<figure>
  {% include imgOrderBody_CIM.svg %}
</figure>

#### Subject

The patient, the practitioner and the healthcare provider are defined in [HL7 Czech Base and Core Implementation Guide](https://hl7.cz/fhir/core/index.html) and this guide only uses them. The patient profile localises the basic concepts, including identifiers and terminology, for use in the Czech context, the practitioner profile allows a role to be assigned to a person, and the provider profile defines how an organisation is represented.

#### Objects

The imaging device and the medical device are likewise defined in [HL7 Czech Base and Core Implementation Guide](https://hl7.cz/fhir/core/index.html). The same applies to components common to several documents, for example biometric data, which are defined identically across documents.

### Imaging Order structure

The sections below list the elements of the individual sections of the skeleton. The complete list of elements with their cardinalities, data types and value sets is on the [Logical models](logical-models-cs.html) page, the mapping to FHIR profiles on the [Mapping to profiles](model-map-cs.html) page.

#### Imaging Order Header

| Number | Element | What it carries |
|---|---|---|
| A.1.1 | Patient identification | The sectoral identifier and the identification data of the patient. |
| A.1.2 | Patient contact information | Contact persons who may be approached regarding the preparation of the patient for the examination or in other cases. The contact type distinguishes emergency contacts, legal representatives and other persons related to the patient. |
| A.1.3 | Health insurance	 | The health insurance company and the insurance relationship of the patient. The insurance company need not be the payer of the requested care. |
| A.1.4 | Coverage | The way the requested care is paid for. |
| A.1.5 | Author | The requester, that is the provider, the workplace, the specialty and the persons who wrote and signed the order. |
| A.1.6 | Requested performer | The provider of the requested care **recommended at the time of issue**. It need not be stated on a non-addressed eReferral. The actual performing provider is carried by the system header, not by this element. |
| A.1.7 | Additional recipient | Additional recipients of the result besides the author, as determined by the requester **at the time of issue**. The distribution of the result is governed by the system header, not by this element. |
| A.1.8 | Document metadata | Data about the document itself, for example its identifier, category, date of creation and custodian. |
| A.1.9 | Electronic signatures | The electronic signature or seal of the document under Act No. 327/2011 Coll., Section 54a, and the time stamp. |

####  Body of the Imaging Order

| Number | Element | What it carries |
|---|---|---|
| A.2.1 | Order information | The identifier and date of the order, the requested date of performance, the urgency, the order text and information for the patient. |
| A.2.2 | Order reason | The indicating diagnosis, the clinical question and the reason for the order, both coded and as text. |
| A.2.3 | Clinical event | The context of care provision to which the order relates, for example the outpatient visit at which the order was created. |
| A.2.4 | Coverage | Payment details for the requested examination in the body of the document, including a clarification where part of the examination is paid for differently from the rest. |
| A.2.5 | Appointment | The requested or agreed date of performance. |
| A.2.6 | Specimen information | Data about a biological specimen for cases where a specimen is imaged, for example a biopsy specimen obtained from the breast or intraoperatively. |

#### Supporting information and data elements

| Number	 | Element | What it carries |
|---|---|---|
| A.3.1 | Clinical information | Data communicated to the imaging workplace that affect the performance of the order or the interpretation of its result: biometric data, urgent information, medication, implants, patient mobility restrictions and other relevant clinical information. |
| A.3.2 | Order / examination data elements | The definition of the requested examination: its code, name, modality, body part, laterality and note. The block may repeat, so one eReferral may carry several requested examinations. |
| A.3.3 | Planned care orders | References to planned care orders following on from this order. |
| A.3.4 | Other supporting information | Other supporting information, for example the date by which the result is needed. |

#### Presented form

The human-readable form of the document in the required PDF format.

#### Attachments

Other attachments that may supplement the structured content, for example outpatient or discharge reports, imaging documentation or data provided by the patient. An attachment does not replace a structured data item: a data item for which a structured element is defined in the logical model must be stated by that element.

Attachments of the eReferral must be distinguished from the documents of the consignment by which the result is delivered when the eReferral is completed. Those follow the rules of the Temporary Repository and are unrelated to the body of the eReferral.