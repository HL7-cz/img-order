Logical: ImageAppointmentCz
Id: ImageAppointmentCz
Title: "A.2.5 - Appointment"
Description: """Appointment - Links to planned care order related to this request form"""

* insert SetFmmandStatusRule ( 0, draft )

* id 0..1 Identifier "A.2.5.1 - Appointment identifier" """Appointment identifier"""
* status 1..1 CodeableConcept "A.2.5.2 - Appointment status" """Appointment status (proposed, confirmed, cancelled)
Preferred system(s): hl7:valueset-appointmentstatus"""
* description 1..1 string "A.2.5.3 - Description" """Brief description of the date of the visit for display in the list of appointments"""
* dateTime 0..1 dateTime "A.2.5.4 - Scheduled appointmnet date and time" """Scheduled appointmnet date and time"""
* examDuration 0..1 Duration "A.2.5.5 - Duration of appointment" """Duration of appointment"""
* comment 0..1 string "A.2.5.6 - Comment" """Additional comment"""
* patientInstruction 0..1 string "A.2.5.7 - Instructions for the patient" """Patient instructions (e.g. arrive 15 minutes early, fasting, arrange for a ride, etc.)"""
* address 1..1 Address "A.2.5.8 - Address" """Name and address of the workplace where the appointment was arranged."""