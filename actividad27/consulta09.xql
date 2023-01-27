for $libro in doc("biblioteca.xml")/bib/libro
return
 <result> 
<titulo>{$libro/titulo} </titulo>
<autor>{$libro/autor}</autor>
</result>
