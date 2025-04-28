Profile: AppointmentCz
Parent: Appointment
Id: AppointmentCz
Title: "Appointment (CZ)"
Description: "Czech profile for appointment. "

* . ^short = "Imaging Order"
* . ^definition = "Imaging Order composition."

* insert SetFmmandStatusRule ( 0, draft )

* identifier 1..
* status MS
* status from $hl7AppointmentStatus
* description 1..
* created 1..
* minutesDuration 1..
* comment 1..
* patientInstruction 1..
* participant.actor only Reference(CZ_LocationCore)