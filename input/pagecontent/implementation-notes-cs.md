
Na následující stránce naleznete poznámky k implementaci obrazové žádanky. Týkají se tvorby kompozice a naplnění tohoto profilu příslušnými daty.

### Přehled

```mermaid
classDiagram
  direction LR
  class CZ_BundleImageOrder{
    <<Bundle>>
  }
  CZ_BundleImageOrder *-- "1" CZ_CompositionImageOrder
  CZ_BundleImageOrder *-- "1" CZ_PatientCore
  CZ_BundleImageOrder *-- "0..*" CZ_ImagingOrderInformation
  CZ_BundleImageOrder *-- "0..*" CZ_ConditionImage
  CZ_BundleImageOrder *-- "0..*" CZ_Coverage
  CZ_BundleImageOrder *-- "0..*" CZ_Encounter
  CZ_BundleImageOrder *-- "0..1" CZ_Appointment
  CZ_BundleImageOrder *-- "0..*" CZ_CarePlanImage
  CZ_BundleImageOrder *-- "0..*" CZ_PractionerCore
  CZ_BundleImageOrder *-- "0..*" CZ_OrganizationCore
  CZ_BundleImageOrder *-- "0..*" CZ_DeviceUseStatement
  CZ_BundleImageOrder *-- "0..*" CZ_Attachment

  CZ_ImagingOrderInformation --> CZ_CompositionImageOrder: composition
  
  CZ_CompositionImageOrder --> CZ_ImagingOrderInformation: section[orderInformation]
  CZ_CompositionImageOrder --> CZ_ConditionImage: section[clinicalQuestion]
  CZ_CompositionImageOrder --> CZ_PractionerCore: author[author]
  CZ_CompositionImageOrder --> CZ_Encounter: encounter
  CZ_CompositionImageOrder --> CZ_OrganizationCore: custodian
  CZ_CompositionImageOrder --> CZ_PatientCore: subject
  CZ_CompositionImageOrder --> CZ_Coverage: section[coverage]
  CZ_CompositionImageOrder --> CZ_Appointment: section[appointment]
  CZ_CompositionImageOrder --> CZ_CarePlanImage: section[carePlan]
  CZ_CompositionImageOrder --> CZ_DeviceUseStatement: section[medicalDevices]
  CZ_CompositionImageOrder --> CZ_Attachment: section[attachments]

```

Obrazová žádanka je reprezentována jako FHIR bundle, který obsahuje zdroje CZ_CompositionImageOrder a všechny zdroje ve stromové struktuře zdrojů, na které se odkazovalo (viz [$document operation](https://www.hl7.org/fhir/composition-operation-document.html)).

### Popis obsahu CZ_CompositionImageOrder

{% include composition-intro-cs.md %}