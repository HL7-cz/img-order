{% include variable-definitions.md %}

Tato stránka uvádí logické modely HL7 FHIR používané k reprezentaci Žádanky o zobrazovací vyšetření.

Kostra logického modelu je pro všechny typy eŽádanek jednotná, viz [Rozsah použití a obsah](scope-and-content-cs.html). Číslo prvku označuje tentýž údaj bez ohledu na typ eŽádanky a bez ohledu na to, ve které implementační příručce je definován. Na položky se proto odkazuje **číslem a názvem prvku**, nikoli názvem modelu — názvy modelů se mezi příručkami liší.

Sekce `A.1`, `A.2`, `A.4` a `A.5` jsou společné všem typům eŽádanek. Sekci `A.3` doplňuje model konkrétního typu, zde tedy Žádanky o zobrazovací vyšetření.

{% sql {
  "query" : "SELECT name AS Name, title AS Title, Type, Description, Web FROM Resources WHERE Type='StructureDefinition' AND Name LIKE 'LogCz%' ORDER BY Title",
  "class" : "lines",
  "columns" : [
    { "name" : "Title"      , "type" : "link"     , "source" : "Name", "target" : "Web"},
    { "name" : "Name"       , "type" : "markdown" , "source" : "Title" },
    { "name" : "Description", "type" : "markdown" , "source" : "Description"}
  ]
} %}