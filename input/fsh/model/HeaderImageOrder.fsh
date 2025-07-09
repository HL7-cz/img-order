Logical: HeaderImagingOrderCz
Id: HeaderImagingOrder
Title: "A.1 - Imaging Order header data element"
Description: """Imaging Order - Imaging Order header data element - A.1"""

* insert SetFmmandStatusRule ( 1, draft )

* subject 1..1 SubjectCz "A.1.1 - Identification and A.1.2 - related contact information of the Patient/subject" """Identification of the patient/subject and Patient/subject related contact information"""
* payer 1..1 PayerCz "A.1.3 - Health insurance and payment information - Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care." """Health insurance and payment information - Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care."""
* coverage 1..1 CoverageOrderCz "A.1.4 - Information about coverage - the default value will be the patient's insurance company" """Coverage information - Information about method of coverage, payer identification data and additional information"""
* author 1..* AuthorCz "A.1.5 - Author (who requested the order). Multiple authors could be provided." """Author (who requested the order). Multiple authors could be provided."""
* requestedPerformer 0..1 RequestedPerformerCz "A.1.6 - Requested Performer (processing person)" """Person who is requested to process document."""
* additionalRecipient 0..* AdditionalRecipientCz "A.1.7 - Additional Recipient (additional recipients of the finding)" """Additional recipients of the finding in addition to the author"""
* documentMetadata 1..1 DocumentMetadataCz "A.1.8 - Document metadata" """Document metadata"""
* digitalSignature 1..* DigitalSignatureCz "A.1.9 - Digital signature" """Digital signature"""
