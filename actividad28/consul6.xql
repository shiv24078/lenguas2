<publicacion>{
  for $book in doc("actividad28.xml")/bookstore/book
  let $year := $book/year
  return $year
}</publicacion>
