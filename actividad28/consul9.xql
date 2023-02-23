<resultados>
  {
    for $book in doc("actividad28.xml")//bookstore/book
    return <titulo>{data($book/title)}</titulo>
  }
  <total>{count(doc("actividad28.xml")//bookstore/book)}</total>
</resultados>
