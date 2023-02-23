for $libro in doc("biblioteca.xml")/bib/libro
order by $libro/titulo
where $libro/precio = 65.95
return $libro