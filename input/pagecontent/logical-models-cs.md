Tato stránka uvádí logické modely HL7 FHIR používané k reprezentaci Obrazové žádanky.

<table  style="border-collapse: collapse; width: 100%" border="1" >
<thead>
<tr style="text-align: center;">
<td><strong>Jméno</strong></td>
<td><strong>Název</strong></td>
<td><strong>Popis</strong></td>
</tr>
</thead>
<tbody>

{% for sd_hash in site.data.structuredefinitions | sort: "title" -%}
  {%- assign sd = sd_hash[1] -%}
  {%- if sd.kind  == "logical" -%}
  <tr><td><a href="{{sd.path}}">{{sd.name}}</a></td><td>{{sd.title}}</td><td>{{sd.description}}</td></tr>
  {%- endif -%}
{%- endfor -%}

</tbody>
</table>