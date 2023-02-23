for $book in doc("actividad28.xml")/bookstore/book
where $book/price <= 30
return $book/title/text()
