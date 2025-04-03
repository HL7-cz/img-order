Profile: HealthInsuranceProvider
Parent: Organization
Id: HealthInsuranceProvider
Title: "Health Insurance Provider"
Description: """
    Health Insurance Provider profile for healthcare organizations, this resource contains all information
    related to a health insurance provider.
"""
* insert SetFmmandStatusRule ( 0, draft )

* identifier 0..*
  * ^definition = """ 
    Unique code for the health insurance company.
    """

* active 1..1
* name 0..1
  * ^definition = """ 
    Official name of the health insurance provider.
    """
  