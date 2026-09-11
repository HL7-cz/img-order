The following is a list of the code systems and value sets used, organised by terminology source. Every logical model element appears exactly once, in the section of the system that is decisive for it. Where an element also allows another system, that system is named in the Value column as an alternative.

National value sets are published by [HL7 Czech Terminology Implementation Guide](https://hl7.cz/terminology/index.html) and their values are available through the **TermX** terminology server. For the code systems of the health insurance companies the authoritative source is the code system package provided under the contractual relationship, publicly published pages are informative only. Where a national value set exists for an element, it is used in preference to an international one.

### NČLPPOL

| Item code      | Item description        | Value                     |
| ---------------| ----------------------- | ------------------------- |
| A.3.1.1.1.2    | Weight – code           | [nclppol](https://ncez.mzcr.cz/nclp/ValueSet/nclppol) 20042, alternatively SNOMED CT 27113001 |
| A.3.1.1.2.2    | Height – code           | [nclppol](https://ncez.mzcr.cz/nclp/ValueSet/nclppol) 20411, alternatively SNOMED CT 1153637007                     |

### MKN-10 / Orphacode

| Item code      | Item description                         | Value                     |
| ---------------| ---------------------------------------- | ------------------------- |
| A.2.2.1      | Problem / diagnosis / condition – indicating diagnosis | [condition-cz](https://ncez.mzcr.cz/terminology/ValueSet/condition-cz)  — ICD-10, ORPHA and SNOMED CT clinical findings                          |
| A.3.1.2.1      | Problem / diagnosis / condition – other relevant clinical information | [condition-cz](https://ncez.mzcr.cz/terminology/ValueSet/condition-cz)                        |

The value sets are also available separately as [mkn-10](https://www.uzis.cz/terminology/ValueSet/mkn-10) and [orphanet-rare-diseases](https://ncez.mzcr.cz/terminology/ValueSet/orphanet-rare-diseases).  

### ATC/DLP

| Item code      | Item description        | Value                     |
| ---------------| ----------------------- | ------------------------- |
| A.3.1.3.1.2      | Medication code              | [dlp-atc](https://ncez.mzcr.cz/terminology/ValueSet/dlp-atc), [dlp-lecivepripravky](https://ncez.mzcr.cz/terminology/ValueSet/dlp-lecivepripravky)                          |

### Snomed-CT

| Item code | Item description | Value |
|---|---|---|
| A.2.2.2 | Clinical question, coded | SNOMED CT |
| A.2.2.4 | Order reason, coded | SNOMED CT `243796009` |
| A.2.6.6 | Specimen type | [lab-specimenType](https://ncez.mzcr.cz/terminology/ValueSet/lab-specimenType) |
| A.2.6.7 | Specimen anatomical location | SNOMED CT, Body structure |
| A.2.6.8 | Specimen morphology | SNOMED CT |
| A.2.6.10 | Specimen collection procedure | SNOMED CT |
| A.2.6.14.1 | Container – type | [cz-specimencontainer](https://ncez.mzcr.cz/terminology/ValueSet/cz-specimencontainer) |
| A.3.1.4.1 | Implant type | SNOMED CT `303607000` and descendants |
| A.3.1.4.4 | Implant – body part | SNOMED CT, Body structure |
| A.3.1.6 | Patient mobility restriction | [cz-mobility-value](ValueSet-cz-mobility-value.html) — eight codes for walking, standing up, standing and moving in bed. The type of the assessed activity is carried by [cz-mobility-type](ValueSet-cz-mobility-type.html) |
| A.3.2.1.1 | Requested examination code | [cz-imaging-procedure-vs](ValueSet-cz-imaging-procedure-vs.html) — descendants of the concept `363679005` Imaging (procedure) |
| A.3.2.1.4 | Requested examination – body part | SNOMED CT, Body structure within the range defined by the DICOM standard |
| A.3.2.1.5 | Laterality | [laterality-cz-lab](https://ncez.mzcr.cz/terminology/ValueSet/cz-specimen-laterality) |

The preferred way of expressing the requested examination is SNOMED CT, the preference is expressed by the strength of the binding in the profile. For laterality note that SNOMED CT and FHIR do not handle the concept of bilaterality the same way as the DASTA code system — where both sides are to be examined, separate values for the left and the right side are created.

### DICOM

| Item code      | Item description        | Value                     |
| ---------------| ----------------------- | ------------------------- |
| A.3.2.3        | Modality                | [cz-modality-vs](https://build.fhir.org/ig/HL7-cz/img-order/en/ValueSet-cz-modality-vs.html) — DICOM ModalityCodelist  |

### FHIR

| Item code      | Item description        | Value                                                                   |
| ---------------| ----------------------- | ----------------------------------------------------------------------- |
| A.1.1.6        | Citizenship             | [v3-Country2](https://terminology.hl7.org/4.0.0/ValueSet-v3-Country2.html)             |
| A.1.1.7        | Gender                  | [administrative-gender-cz](https://terminology.hl7.org/4.0.0/ValueSet-v3-AdministrativeGender.html) |
| A.1.1.9        | Communication language  | [all-languages](https://hl7.org/fhir/valueset-all-languages.html) |
| A.1.2.1        | Address - country                 | [v3-Country2](https://terminology.hl7.org/4.0.0/ValueSet-v3-Country2.html)             |
| A.1.2.4.1        | Contact type                 | [	contactrole-cz](https://ncez.mzcr.cz/terminology/ValueSet/contactrole-cz)             |
| A.1.4.1        | Coverage kind      | [cz-coverage-type](http://hl7.org/fhir/ValueSet/coverage-kind) — HIP health insurance, pay self-payer                             |
| A.1.8.3        | Document status         | [composition-status](https://hl7.org/fhir/valueset-request-status.html) — preliminary, final, amended, entered-in-error. The element maps to Composition.status, where the binding is required already in the base resource and the profile does not narrow it.                      |
| A.1.8.7        | Document confidentiality        | [v3-Confidentiality](https://terminology.hl7.org/ValueSet-v3-Confidentiality.html)            |
| A.1.8.8       | Document language  | [all-languages](https://hl7.org/fhir/valueset-all-languages.html) |
| A.2.1.4        | Order urgency    | [request-priority](https://hl7.org/fhir/valueset-request-priority.html) — routine, urgent, asap, stat                     |
| A.2.4.1        | Coverage kind      | [cz-coverage-type](http://hl7.org/fhir/ValueSet/coverage-kind)                              |
| A.2.5.2        | Appointment status      | [appointmentstatus](https://hl7.org/fhir/valueset-appointmentstatus.html)                              |

The element `A.1.8.3 Document status` expresses the status of the document at the time of issue, not the state of the eReferral in the system. That is a property of the system, not of the document, see [Workflow](https://build.fhir.org/ig/HL7-cz/img-order/en/artifacts.html).

### LOINC

| Item code      | Item description        | Value                                                                   |
| ---------------| ----------------------- | ----------------------------------------------------------------------- |
| A.1.8.2        | Document category       | [document-category](https://ncez.mzcr.cz/terminology/ValueSet/document-category)             |
| —        | Order type, `Composition.type`       | [referralorder-types](https://ncez.mzcr.cz/terminology/ValueSet/referralorder-typesy) — for type Z the SNOMED CT code `721964003`             |

The element `Composition.type` carries the order type from the national Referral Order Types value set. No `A.x` element is defined for it in the logical model, which is why the table gives it no number.

### UCUM

| Item code      | Item description        | Value                                                                   |
| ---------------| ----------------------- | ----------------------------------------------------------------------- |
| A.3.1.1.1.1  | Weight value – unit | [cz-observationUnitsWeight-vs](ValueSet-cz-observationUnitsWeight-vs.html) — kg, g |
| A.3.1.1.1.2 | Height value – unit  | [cz-observationUnitsHeight-vs](ValueSet-cz-observationUnitsHeight-vs.html) — m, cm |