#Archivo Principal, Ejercicio Ruby, Laboratorio Telemática
#Programado por: Gustavo Adolfo Mejía S.

#Cabecera
require "./source/textos.rb"
require "./source/body.rb"

begin
	system "cls"
	TextSaludo()
	app(gets.to_i)

#Fin del Programa
	print 'Exit? (y/n): '
end until gets.chomp.upcase == "Y"