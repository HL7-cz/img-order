In the field of imaging methods, the Digital Imaging and Communications in Medicine (DICOM) protocol and format is the standard for archiving and exchanging data. It defines, among other things, the individual imaging modalities and is used to archive data in the Picture Archiving and Communication System (PACS).

DICOM is linked to the SNOMED CT clinical terminology system. The other standards and code systems are shared by imaging methods with the remaining documents of the patient record. These are in particular HL7 FHIR, SNOMED CT, ICD-10, DICOM and national code systems and identifiers. An overview of the code systems and value sets used is on the [Terminology considerations](terminology-considerations.html) page.

<div>
<img src="paper-order.png" class="figure-img img-responsive img-rounded center-block" width="40%">
<p><strong>Fig. 1: The paper referral form </strong></p>
<p> </p>
</div>

The paper template for the Imaging Order is the **Referral for examination/treatment of type Z**. The current versions of the forms are available on the [VZP – forms for providers](https://www.vzp.cz/poskytovatele/tiskopisy) pages.

The content requirements for a request for further health services are laid down in `Annex No. 1, Part 2 to Decree No. 444/2024 Coll., on medical records`. As in force on 19 February 2025, a request for further health services contains:

a) the requested health services,
b) the justification of the request,
c) the urgency of the request,
d) data on the most recently established state of health, including those results of laboratory and other supporting examinations that are essential for the provision of the requested health services,
e) data on the treatment provided so far and the response of the patient to it,
f) the working diagnosis,
g) the essential anamnestic data related to the requested health services.
This implementation guide translates these legislative requirements into an interoperable electronic form based on the HL7 FHIR R4 standard. Which elements of the logical model satisfy the individual requirements is stated in the Special Functional Specification of eReferral type Z.