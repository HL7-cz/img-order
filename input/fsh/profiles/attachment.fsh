Profile: CZ_Attachment
Parent: DocumentReference
Id: cz-attachment
Title: "Attachment: Imaging Order (CZ)"
Description: "Czech profile for attachment. "

* . ^short = "Imaging Order"
* . ^definition = "Imaging Order composition."

* insert SetFmmandStatusRule ( 0, draft )

* content.attachment
* content.attachment.contentType MS
* content.attachment.language MS
* content.attachment.url MS
* content.attachment.title MS
* content.attachment.creation MS