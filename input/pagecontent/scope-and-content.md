### Scope

#### Included Areas

This document addresses the functional specification of an imaging examination order, its structure and the value sets suitable for its creation.

The term Imaging Examination Order refers to a request for an examination defined by one of the modalities listed in the [following table](scope-and-content.html#modality-table). Given the cardinality of `1..*` it is possible to request two modalities simultaneously - typically in the case of hybrid methods such as **PET/CT** (i.e. PT + CT).

##### Modality Table

| DICOM Modality    | Meaning in English           | Czech Interpretation      |
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

The functional specification does not address the overall ecosystem of order and their transmission methods. Additionally, order for imaging examinations outside the field of radiology (e.g. keratometry) are not included.

### Content

#### Information Models

Basic Sections of the Imaging Order

##### Conceptual view

Imaging Order could be divided into several parts: document header and body and optionally it could also have various attachments, such as attachments or presented form.

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

{% include StructureDefinition-cz-compositionImageOrder-intro.md %}