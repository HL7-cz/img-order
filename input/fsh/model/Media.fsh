Logical: MediaCz
Id: MediaCz
Title: "C - Media"
Description: """Media - Media attachments."""

* media 1..* Base "C - Media" """Media attachment"""
* media.contentType 0..1 CodeableConcept "C.1 Type of content" """Type of content - MIME type is required"""
* media.language 0..1 CodeableConcept "C.2 Language of content" """Language of content - HL7 valueset of languages is required"""
* media.data 1..1 base64Binary "C.3 Data of content" """Data inline, base64ed"""
* media.url 0..1 url "C.4 URL of content" """Uri where the data can be found"""
* media.title 1..1 string "C.5 Title of content" """Label to display in place of the data"""
* media.creation 0..1 dateTime "C.6 Date of creation" """Date attachment was first created"""
