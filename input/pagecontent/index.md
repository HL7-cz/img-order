{% include variable-definitions.md %}

### Introduction

This implementation guide is based on [FHIR version R4](https://hl7.org/fhir/R4/). Specify a set of rules that will be used for HL7 FHIR to define how to represent Imaging Order in the Czech national context, in line with European eHN guidelines.

Its main objective is to define the content components and the preferred structure to be used to construct a imaging order. The purpose of this standard is to define the representation of the imaging order as a patient's medical record for the purpose of electronic exchange of health information between individuals, healthcare providers and infrastructure in the Czech Republic. 

This guide does not describe how to exchange this message.

### Scope

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for this guide.
- [Introduction]: This segment contains general information about Imaging order. 
- [Functional]: This segment contains information about logical models, use cases, workflow and terminology. 
- [Implementation]: This segment contains information about maps, examples and obligations.
- [About]: This segment contains pages about authors, dependencies, copyright and downloads.
- [Artifacts](artifacts.html): This page provides a list of the FHIR artifacts defined as part of this implementation guide.
  
#### Included Areas

This document addresses the functional specification of an imaging examination order, its structure and the value sets suitable for its creation.

The term Imaging Examination Order refers to a request for an examination defined by one of the modalities listed in the [following table](index.html#modality-table). Given the cardinality of `1..*` it is possible to request two modalities simultaneously - typically in the case of hybrid methods such as **PET/CT** (i.e. PT + CT).

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
  
### Information Models

Basic Sections of the Imaging Order

#### Conceptual view

Imaging Order could be divided into several parts: document header and body and optionally it could also have various attachments, such as media or presented form.

##### Imaging Order Parts

<figure>
  {% include imgOrder_CIM.svg %}
</figure>

##### Imaging Order Header

<figure>
  {% include imgOrderHead_CIM.svg %}
</figure>

##### Imaging Order Body

<figure>
  {% include imgOrderBody_CIM.svg %}
</figure>

### References

The paper form template for an electronic referral is the paper referral form for Examination/Treatment Type Z. The specifications for the content of the paper referral are provided in `příloha č. 1 v části 2 k vyhlášce č. 444/2024 Sb., o zdravotnické dokumentaci, k 19.2.2025`.

* Related specifications:
  * {{hl7XtEHR}}
    * This specification has inspired many of the design patterns defined in this IG.
  * {{czLabOrder}}
    * This specification has many of together design patterns defined in this IG.
  * {{czImg}}
    * This specification has many of together design patterns defined in this IG.
  * {{czCore}}
    * Where possible this specification has been aligned with choices made in CZ core.

### Dependencies

{% include dependency-table.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### IP statements

{% include ip-statements.xhtml %}

