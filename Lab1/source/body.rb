require "./source/textos.rb"

def app(value)
	#Title
	system "cls"
	textTitle(value-1)

	#app
	mynum = Numero.new

	puts ""

	mynum.setvalue(value)
	mynum.getvalue
end




#Clase número
class Numero
	@value
	def setvalue(value)
		@value = value
	end

	def getvalue()
		puts @value
	end
end