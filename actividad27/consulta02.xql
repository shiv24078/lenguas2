for $a in doc("biblioteca.xml")//libro
order by $a/@anyo
return <libro>{$a/@anyo}{$a/titulo}</libro>