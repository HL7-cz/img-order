Logical: ImagingOrderCz
Id: ImagingOrderCz
Title: "A - Imaging Order"
Description: """Imaging Order"""

* insert SetFmmandStatusRule ( 1, draft )

* header 1..1 HeaderImagingOrder "A.1 - Imaging Order header data element" """Imaging Order header data element"""
* body 1..1 BodyImageOrderCz "A.2 - Imaging Order body data element" """Imaging Order body data element"""
* presentedForm 0..* PresentedFormCz "B - Presented Form" """Entire order as issued. Various formats could be provided,  pdf format is recommended."""
* media 0..* MediaCz "C - Media Attachment" """Aditional media attachment"""