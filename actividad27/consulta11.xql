<html>
  <head>
    <title>Listado de libros</title>
  </head>
  <body>
    <h1>Listado de libros</h1>
    <table border="1">
      <tr>
        <th><b>Título</b></th>
        <th><b>Editorial</b></th>
        <th><b>Precio</b></th>
      </tr>
      {
        for $libro in doc("biblioteca.xml")/bib/libro
        order by $libro/titulo
        return 
        <tr>
          <td align="left">{$libro/titulo}</td>
          <td align="left">{$libro/editorial}</td>
          <td align="right">{$libro/precio}</td>
        </tr>
      }
    </table>
  </body>
</html>


