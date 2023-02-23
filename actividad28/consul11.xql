for $book in doc("actividad28.xml")/bookstore/book
let $precio_IVA := $book/price * 1.21
order by $precio_IVA
return <libro>
  <titulo>{ $book/title }</titulo>
  <precio_sin_iva>{ $book/price }</precio_sin_iva>
  <precio_con_iva>{ $precio_IVA }</precio_con_iva>
</libro>
