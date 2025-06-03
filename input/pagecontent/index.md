{% include variable-definitions.md %}

### Introduction

This implementation guide is based on [FHIR version R4](https://hl7.org/fhir/R4/). Specify a set of rules that will be used for HL7 FHIR to define how to represent Imaging Order in the Czech national context, in line with European eHN guidelines.

Its main objective is to define the content components and the preferred structure to be used to construct a imaging order. The purpose of this standard is to define the representation of the imaging order as a patient's medical record for the purpose of electronic exchange of health information between individuals, healthcare providers and infrastructure in the Czech Republic. 

This guide does not describe how to exchange this message.

### Scope

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction, scope short, references, dependencies, cross version analysis and IP statement for this guide.
- Introduction:
  - [Scope and content](scope-and-content.html): This segment contains general information about Imaging order.
  - [Background](background.html): This segment contains background information about Imaging order. 
- Functional:
  - [Use cases](use-cases.html): This segment contains information about use cases. 
  - [Workflow](workflow.html): This segment contains information about workflow. 
  - [Logical models](logical-models.html): This segment contains information about logical models. 
  - [Terminology considerations](terminology-considerations.html): This segment contains information about terminology. 
- Implementation:
  - [Mapping to profiles](mapping-2-profile.html): This segment contains information about logical model maps to profiles.
  - [Examples](mapping-2-profile.html): This segment contains information about examples.
  - [Obligations](mapping-2-profile.html): This segment contains information about obligations.
- About:
  - [Authors](authors.html): This segment contains informaction about authors.
  - [Downloads](downloads.html): This segment contains informaction about downloads.
  - [Dependencies](dependencies.html): This segment contains informaction about dependencies.
  - [Copyright](copyright.html): This segment contains informaction about copyright.
- [Artifacts](artifacts.html): This page provides a list of the FHIR artifacts defined as part of this implementation guide.

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

