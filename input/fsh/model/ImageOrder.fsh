Logical: LogEnImagingOrderCz
Id: ImagingOrderCz
Title: "A - Imaging Order"
Description: """Imaging Order"""

* insert SetFmmandStatusRule ( 1, draft )

* header 1..1 HeaderImagingOrder "A.1 - Imaging Order header data element" """Imaging Order header data element"""
* body 0..1 BodyImageOrderCz "A.2 a A.3 - Imaging Order body data element" """Imaging Order body data element"""
* presentedForm 1..* PresentedFormCz "A.4 - Presented Form" """Entire order as issued. Various formats could be provided,  pdf format is recommended."""
* attachment 0..* AttachmentsCz "A.5 - Additional Attachment" """Additional media attachment"""