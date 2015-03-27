def TextSaludo
	puts <<Paragraph
 +----------------------------+
 |       Bienvenido al        |
 |      Laboratoio Ruby       |
 |                            |
 | Elija una aplicacion:      |
 |                            |
 | 1) Rango de primos         |
 | 2) Promedio de Asignaturas |
 | 3) Codificador             |
 | 4) Decodificador           |
 | 5) Factoial                |
 | 6) Constante e             |
 | 7) Calcular e^x            |
 |                            |
 +----------------------------+
Paragraph
	print "Opción: "
end


def textTitle(value)
	textText =
	[
	"| 1) Rango de primos         |",
	"| 2) Promedio de Asignaturas |",
	"| 3) Codificador             |",
	"| 4) Decodificador           |",
	"| 5) Factoial                |",
	"| 6) Constante e             |",
	"| 7) Calcular e^x            |"
	]
	puts "+----------------------------+"
	puts textText[value]
	puts "+----------------------------+"
end

