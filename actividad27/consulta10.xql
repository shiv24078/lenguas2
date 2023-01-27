for $libro in doc("biblioteca.xml")/bib/libro
order by string-join($libro/autor/apellido)
return
 <libro> 
 {concat(($libro/titulo), " -> ", count($libro/autor/apellido))}
</libro>