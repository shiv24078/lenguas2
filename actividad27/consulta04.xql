for $libro in doc("biblioteca.xml")//libro
where $libro/@anyo < 2000
return $libro