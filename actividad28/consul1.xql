for $book in doc("actividad28.xml")/bookstore/book
return <titulo>{ $book/title }</titulo>
