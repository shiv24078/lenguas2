for $book in doc("actividad28.xml")/bookstore/book[year = 2005]
return <lib2005><titulo>{ $book/title }</titulo><autor>{ $book/author }</autor></lib2005>
