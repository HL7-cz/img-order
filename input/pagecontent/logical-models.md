{% include variable-definitions.md %}

This page lists the HL7 FHIR logical models used to represent the Imaging Order.

The skeleton of the logical model is uniform for all types of eReferral, see [Scope and content](scope-and-content.html). An element number denotes the same data item regardless of the type of eReferral and regardless of the implementation guide in which it is defined. Items are therefore referenced **by element number and name**, not by model name — model names differ between guides.

Sections `A.1`, `A.2`, `A.4` and `A.5` are common to all types of eReferral. Section `A.3` is supplied by the model of the particular type, here the Imaging Order.


{% sql {
  "query" : "SELECT name AS Name, title AS Title, Type, Description, Web FROM Resources WHERE Type='StructureDefinition' AND Name LIKE 'LogEn%' ORDER BY Title",
  "class" : "lines",
  "columns" : [
    { "name" : "Title"      , "type" : "link"     , "source" : "Name", "target" : "Web"},
    { "name" : "Name"       , "type" : "markdown" , "source" : "Title" },
    { "name" : "Description", "type" : "markdown" , "source" : "Description"}
  ]
} %}