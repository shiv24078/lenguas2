let $doc := doc("servicio2.xml")
for $empleado in distinct-values($doc/consulta/servicio/empleado/nombre)
let $servicios := $doc/consulta/servicio[empleado/nombre = $empleado]
for $dia in distinct-values($servicios/horario/dia)
let $horas := $servicios/horario[dia = $dia]/hora
order by $empleado, $dia
return
  for $hora in $horas
  let $tipo := distinct-values($servicios/tipo/text())
  return string-join(($empleado, $tipo, $dia, $hora), ' - '), '&#10;'