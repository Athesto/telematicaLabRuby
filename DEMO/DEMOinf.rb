#ejemplo 1
require "./source/textos.rb"
mytext = Texto. new

begin
	system "cls"
	mytext.saludo
	print 'Exit? (y/n): '
end until gets.upcase == "Y\n"