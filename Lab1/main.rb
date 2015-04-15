#Archivo Principal, Ejercicio Ruby, Laboratorio Telemática
#Programado por: Gustavo Adolfo Mejía S. y Diego Guío

#Cabecera
require "./source/textos.rb"
require "./source/body.rb"
require "./source/estudiante.rb"

begin
	system "cls"
	TextSaludo()
	app(gets.to_i)



#Fin del Programa
	print 'Continue? (y/n): '
end until gets.chomp.upcase == "N"