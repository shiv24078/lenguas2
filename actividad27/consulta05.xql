for $libro in doc("biblioteca.xml")/bib/libro
where $libro/editorial = "Addison-Wesley"
where $libro/@anyo >= 1992
return <li> {data($libro/@anyo)} -> {data($libro/titulo)}</li>
