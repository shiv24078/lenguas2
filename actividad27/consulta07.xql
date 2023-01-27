for $libro in doc("biblioteca.xml")/bib/libro
where count ($libro/autor) = 0
return <li> {data($libro/@anyo)} -> {data($libro/titulo)}</li>
