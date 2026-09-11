{% include variable-definitions.md %}

### Introduction

This implementation guide is based on [FHIR version R4](https://hl7.org/fhir/R4/) and defines how the **Imaging Order**, that is the eReferral of type Z, is represented in the Czech national context. It is aligned with the European eHN guidelines.

By means of the Imaging Order, the attending physician requests the imaging of the internal structure or function of the patient's body from a provider authorised to perform such examination. It is part of the patient's medical records and authorises the requested health service, so where the care is covered by public health insurance, it is a prerequisite for its reimbursement. The legal definition of the eReferral and the regulations governing its content are given in the References chapter.

The guide defines the content components of the document and the structure in which it is assembled: the logical model, its mapping to FHIR profiles and resources, the structure of the FHIR Bundle, the value sets and example instances. The aim is for the eReferral to be electronically exchangeable between healthcare providers, their information systems and the national eHealth infrastructure.

#### The two parts of an eReferral

From the interface point of view, an eReferral consists of two parts.

| Part | What it carries | Where it is described |
|---|---|---|
| System header | Order type, requester, patient, addressee, additional recipients of the result and the reference to a parent order. It carries no clinical content and may change during the lifecycle. | Standard of the eReferral System, schema in the OpenAPI specification |
| FHIR Bundle of type `document` | All clinical content of the document. It is assembled and signed when the order is issued and does not change for the whole lifecycle of the eReferral. | **This guide**, the General Functional Specification of the eReferral Document and the Special Functional Specification of eReferral type Z |

**This guide describes the FHIR Bundle only.** It does not describe the system header.

This guide does not describe how the document is exchanged.

#### Relation to the other documentation

The eReferral documentation is divided into the set below.

| Document | What it describes |
|---|---|
| Standard of the eReferral System | The eReferral system as a whole: actors, roles and permissions, architecture, state model and lifecycle, processes and interface operations, integrations, cyber security and operating conditions. |
| General Functional Specification of the eReferral Document | Content and properties of the eReferral document common to all types. |
| Special Functional Specification of eReferral type Z | Type Z specifics: clinical scenarios, type-specific content requirements, the mapping table to the data interface and type-specific value sets. |
| Implementation specification (this guide) | The complete logical model, mapping to FHIR resources and profiles, the structure of the FHIR Bundle, value sets and their code systems, example instances. |
| OpenAPI specification of interface | Interface data schemas: fields, data types, cardinalities, examples and error responses. |

### Scope

This guide is divided into several pages listed in the menu bar at the top of every page.

- [Home](index.html): This page provides introductory information, the relation to the other documentation, the scope, references, dependencies, the cross-version analysis and the intellectual property statement.
- Introduction:
  - [Scope and content](scope-and-content.html): This segment defines what the guide covers and what it does not, and states the skeleton of the logical model of the document.
  - [Background](background.html): This segment contains information about the origin of the definition of the Imaging Order.
- Functional:
  - [Use cases](use-cases.html): This segment lists the clinical scenarios and points to the instances that realise them.
  - [Workflow](workflow.html): This segment projects the eReferral process flow onto FHIR artifacts.
  - [Logical models](logical-models.html): This segment contains the list of logical models with element numbers and names.
  - [Terminology considerations](terminology-considerations.html): This segment contains information about the code systems and value sets used.
- Implementation:
  - [Mapping to profiles](model-map.html): This segment contains the mapping of the logical model to profiles.
  - [Examples](examples.html): This segment contains the example instances.
  - [Obligations](obligations.html): This segment contains information about obligations.
  - [Implementation notes](implementation-notes.html): This segment contains information for implementers.
- About:
  - [Authors](authors.html): This segment contains information about the authors.
  - [Downloads](downloads.html): This segment contains information about downloading the content of the implementation specification.
  - [Dependencies](dependencies.html): This segment contains information about dependencies.
  - [Copyright](copyright.html): This segment contains information about copyright.
- [Artifacts](artifacts.html): This page provides the list of FHIR artifacts defined as part of this implementation guide.

### References

The paper template for the Imaging Order is the Referral for examination/treatment of type Z. The content requirements for a request for further health services are laid down in `Annex No. 1, Part 2 to Decree No. 444/2024 Coll., on medical records`, as in force on 19 February 2025.

* Related specifications:
  * {{czKOrder}}
    * The implementation specification of eReferral types K and FT, that is the sibling guide of the same documentation set. It shares the skeleton of the logical model and the element numbering with this guide.
  * {{hl7XtEHR}}
    * This specification inspired many of the design patterns defined in this IG.
  * {{czLabOrder}}
    * This specification shares many of the design patterns defined in this IG.
  * {{czImg}}
    * This specification describes the report that is the answer to an Imaging Order.
  * {{czCore}}
    * Wherever possible, specifications were inherited from the CZ Core definitions.

### Dependencies

{% include dependency-table.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### IP statements

{% include ip-statements.xhtml %}