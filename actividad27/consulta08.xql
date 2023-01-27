for $apellido in distinct-values (doc("biblioteca.xml")/bib/libro/autor/apellido)
order by $apellido
return data($apellido)
