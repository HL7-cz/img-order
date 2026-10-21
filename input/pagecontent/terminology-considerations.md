The following is a list of the code systems and value sets used, organised by terminology source. Every logical model element appears exactly once, in the section of the system that is decisive for it. Where an element also allows another system, that system is named in the Value column as an alternative.

National value sets are published by [HL7 Czech Terminology Implementation Guide](https://hl7.cz/terminology/index.html) and their values are available through the **TermX** terminology server. For the code systems of the health insurance companies the authoritative source is the code system package provided under the contractual relationship, publicly published pages are informative only. Where a national value set exists for an element, it is used in preference to an international one.

### NČLPPOL

| Item code   | Item description | Value                                                                                          |
| ----------- | ---------------- | ---------------------------------------------------------------------------------------------- |
| A.3.1.1.1.2 | Weight – code   | `https://ncez.mzcr.cz/nclp/ValueSet/nclppol` 20042, alternatively SNOMED CT 27113001   |
| A.3.1.1.2.2 | Height – code   | `https://ncez.mzcr.cz/nclp/ValueSet/nclppol` 20411, alternatively SNOMED CT 1153637007 |

### MKN-10 / Orphacode

| Item code | Item description                                                       | Value                                                                                                                   |
| --------- | ---------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| A.2.2.1   | Problem / diagnosis / condition – indicating diagnosis                | `https://ncez.mzcr.cz/terminology/ValueSet/condition-cz`  — ICD-10, ORPHA and SNOMED CT clinical findings |
| A.3.1.2.1 | Problem / diagnosis / condition – other relevant clinical information | `https://ncez.mzcr.cz/terminology/ValueSet/condition-cz`                                                   |

The value sets are also available separately as `https://uzis.cz/terminology/ValueSet/mkn-10` and `https://ncez.mzcr.cz/terminology/ValueSet/orphanet-rare-diseases`.

### ATC/DLP

| Item code   | Item description | Value                                                                                                                                            |
| ----------- | ---------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| A.3.1.3.2 | Medication code  | `https://sukl.cz/terminology/ValueSet/dlp-atc`, `https://sukl.cz/terminology/ValueSet/dlp-lecivepripravky` |

### Snomed-CT

| Item code  | Item description                   | Value                                                                                                                                                                                                                      |
| ---------- | ---------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| A.2.2.2    | Clinical question, coded           | SNOMED CT                                                                                                                                                                                                                  |
| A.2.2.4    | Order reason, coded                | `https://ncez.mzcr.cz/terminology/ValueSet/condition-sct` — SNOMED CT clinical findings (descendants of `404684003` Clinical finding); ICD-10 (MKN-10) and Orphacode are also allowed |
| A.2.6.6    | Specimen type                      | `https://ncez.mzcr.cz/terminology/ValueSet/lab-specimenType`                                                                                                                                              |
| A.2.6.7    | Specimen anatomical location       | SNOMED CT, Body structure                                                                                                                                                                                                  |
| A.2.6.8    | Specimen morphology                | SNOMED CT                                                                                                                                                                                                                  |
| A.2.6.10   | Specimen collection procedure      | SNOMED CT                                                                                                                                                                                                                  |
| A.2.6.14.1 | Container – type                  | `https://ncez.mzcr.cz/terminology/ValueSet/cz-specimencontainer`                                                                                                                                      |
| A.3.1.4.1  | Implant type                       | SNOMED CT`303607000` and descendants                                                                                                                                                                                     |
| A.3.1.4.4  | Implant – body part               | SNOMED CT, Body structure                                                                                                                                                                                                  |
| A.3.1.6    | Patient mobility restriction       | `https://ncez.mzcr.cz/terminology/ValueSet/cz-mobility-value` — eight codes for walking, standing up, standing and moving in bed. The type of the assessed activity is carried by `https://ncez.mzcr.cz/terminology/ValueSet/cz-mobility-type` |
| A.3.2.1.1  | Requested examination code         | `https://ncez.mzcr.cz/terminology/ValueSet/imaging-procedures` — descendants of the concept `363679005` Imaging (procedure)                                                                                            |
| A.3.2.1.4  | Requested examination – body part | SNOMED CT, Body structure within the range defined by the DICOM standard                                                                                                                                                   |
| A.3.2.1.5  | Laterality                         | `https://ncez.mzcr.cz/terminology/ValueSet/cz-specimen-laterality`                                                                                                                                       |

The preferred way of expressing the requested examination is SNOMED CT, the preference is expressed by the strength of the binding in the profile. For laterality note that SNOMED CT and FHIR do not handle the concept of bilaterality the same way as the DASTA code system — where both sides are to be examined, separate values for the left and the right side are created.

### DICOM

| Item code | Item description | Value                                                                                                                 |
| --------- | ---------------- | --------------------------------------------------------------------------------------------------------------------- |
| A.3.2.1.3   | Modality         | `https://ncez.mzcr.cz/terminology/ValueSet/cz-modality` — DICOM ModalityCodelist |

### FHIR

| Item code | Item description         | Value                                                                                                                                                                                                                                                                        |
| --------- | ------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| A.1.1.6   | Citizenship              | `http://terminology.hl7.org/ValueSet/v3-Country2`                                                                                                                                                                                                    |
| A.1.1.7   | Gender                   | `https://hl7.cz/terminology/ValueSet/administrative-gender-cz`                                                                                                                                                                           |
| A.1.1.9   | Communication language   | `http://hl7.org/fhir/ValueSet/all-languages`                                                                                                                                                                                                             |
| A.1.2.1   | Address - country        | `http://terminology.hl7.org/ValueSet/v3-Country2`                                                                                                                                                                                                    |
| A.1.2.4.1 | Contact type             | `https://hl7.cz/terminology/ValueSet/contactrole-cz`                                                                                                                                                                                                   |
| A.1.4.1   | Coverage type            | `https://ncez.mzcr.cz/terminology/ValueSet/cz-coverage-type` — `HIP` health insurance, `pay`, self-payer, `WCBPOL` Workers' Compensation Policy, `PUBLICPOL` Public Healthcare Policy, `EHCPOL` Extended Healthcare Policy, `SUBSIZ` Subsidized Health Program |
| A.1.4.3   | Reimbursement code       | `https://uzis.cz/terminology/ValueSet/nzis-nahradyzazdravotnipeci` — VZP code list "Compensation for healthcare" (Náhrady za zdravotní péči); binding of the `kodNahrady` extension inherited from CZ_Coverage |
| A.1.8.3   | Document status          | `http://hl7.org/fhir/ValueSet/composition-status` — preliminary, final, amended, entered-in-error. The element maps to Composition.status, where the binding is required already in the base resource and the profile does not narrow it.              |
| A.1.8.7   | Document confidentiality | `http://terminology.hl7.org/ValueSet/v3-Confidentiality`                                                                                                                                                                                            |
| A.1.8.8   | Document language        | `http://hl7.org/fhir/ValueSet/all-languages`                                                                                                                                                                                                             |
| A.2.1.4   | Order urgency            | `http://hl7.org/fhir/ValueSet/request-priority` — routine, urgent, asap, stat                                                                                                                                                                        |
| A.2.4.1   | Coverage kind            | `https://ncez.mzcr.cz/terminology/ValueSet/cz-coverage-type`                                                                                                                                                                                                                |
| A.2.5.2   | Appointment status       | `http://hl7.org/fhir/ValueSet/appointmentstatus`                                                                                                                                                                                                     |

The element `A.1.8.3 Document status` expresses the status of the document at the time of issue, not the state of the eReferral in the system. That is a property of the system, not of the document, see [Workflow](workflow.html).

### LOINC

| Item code | Item description                | Value                                                                                                                               |
| --------- | ------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| A.1.8.2   | Document category               | `https://ncez.mzcr.cz/terminology/ValueSet/document-category`                                                     |
| —        | Order type,`Composition.type` | `https://ncez.mzcr.cz/terminology/ValueSet/referralorder-types` — for type Z the SNOMED CT code `721964003` |

The element `Composition.type` carries the order type from the national Referral Order Types value set. No `A.x` element is defined for it in the logical model, which is why the table gives it no number.

### UCUM

| Item code | Item description               | Value                                                                                                                                                                                 |
| --------- | ------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| A.3.1.1.1 | Anthropometric metric and unit | `https://ncez.mzcr.cz/terminology/ValueSet/sct-vital-signs` and `https://ncez.mzcr.cz/terminology/ValueSet/cz-anthropometric-metric` — height/head circumference: `m`, `cm`; weight: `kg`, `g`; BMI: `kg/m2`; body surface area: `m2` |
