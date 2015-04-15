require "./source/textos.rb"

def app(value)
	#Title
	system "cls"
	textTitle(value-1)

	#app
	
	case value

	when 1
		myNum = Numero.new
		print "limite inferior: "
		numMin = gets.to_i
		print "limite superior: "
		numMax = gets.to_i
		

		cont = 0;
		for i in numMin..numMax 
			myNum.setvalue(i)
			if myNum.isPrime == true
				cont +=1;
				print(myNum.getvalue," " )
			end
		end

		print("\ncontador: ", cont, " numeros\n"); 



	when 2 #calculo de materias
		usuario = Estudiante.new()	
		usuario.IntroducirNombre()
	  	num = usuario.NumerodeEval()
	  	usuario.Calificaciones(num);
	  	usuario.Resultado

		gets()

	when 3 #Codificado
		myNum = Numero.new
		print "Insertar 4 digitos a cifrar: "
		myNum.setvalue(gets.to_i)
		puts myNum.getCode()

	when 4 #Decodificado
		myNum = Numero.new
		print "Insertar 4 digitos a decodificar: "
		myNum.setvalue(gets.to_i)
		puts myNum.getDecode()

	when 5 #Factorial
		myNum = Numero.new
		print "Cálculo f(n) = n!; donde n= "
		myNum.setvalue(gets.to_i)
		puts myNum.getFactorial()

	when 6 #Constante e
		myNum = Numero.new
		puts "Cálculo constante e; "
		myNum.setvalue(1)
		puts myNum.getEuler()

	when 7 #Constante e
		myNum = Numero.new
		print "Cálculo f(n) = e^n; donde n= "
		myNum.setvalue(gets.to_i)
		puts myNum.getEuler()


	else
		puts "valor invalido"
	end

end




#Clase número
class Numero
	@value
	@Code
	@Factorial
	@EulerN


	def setvalue(value)
		@value = value
	end

	def setCode(value)
		@Code = value
	end

	def setFactorial(value)
		@Factorial = value
	end

	def setEulerN(value)
		@EulerN = value
	end

	def isPrime
		n= @value
		if (n <= 3) 
        	return n > 1;
    	elsif (n % 2 == 0 || n % 3 == 0) 
        	return false;
    	else 
    		i=5
    		while (i * i <= n)
    			if (n % i == 0 || n % (i + 2) == 0) 
                	return false;
                end
    			i += 6
        	end
        end
        return true;
    		
	end


	def setCodeValue()
		b = Array.new(4)
		
		b[0]= getvalue();
		b[1]=(b[0]/10);b[0]=(b[0]%10);
        b[2]=(b[1]/10);b[1]=(b[1]%10);
        b[3]=(b[2]/10);b[2]=(b[2]%10);

		c = b[2]; b[2] = b[0]; b[0] = c;
		c = b[1]; b[1] = b[3]; b[3] = c;

        for i in 0..3
        	b[i]=(b[i]-3)%10
		end
		c=b[0]*1 + b[1]*10 + b[2]*100 + b[3]*1000 

        setCode(c);
	end

	def setDecodeValue()
		b = Array.new(4)
		
		b[0]= getvalue();
		b[1]=(b[0]/10);b[0]=(b[0]%10);
        b[2]=(b[1]/10);b[1]=(b[1]%10);
        b[3]=(b[2]/10);b[2]=(b[2]%10);

		c = b[2]; b[2] = b[0]; b[0] = c;
		c = b[1]; b[1] = b[3]; b[3] = c;

        for i in 0..3
        	b[i]=(b[i]+3)%10
		end
		c=b[0]*1 + b[1]*10 + b[2]*100 + b[3]*1000 

        setCode(c);
	end

	def setFactorialValuen()
		fct=1
    	for i in(1..getvalue)
     		fct=fct*(i)  
    	end
    	setFactorial(fct)
	end

	def setFactorialValue(n)
		fct=1
    	for i in(1..n)
     		fct=fct*(i)  
    	end
    	return(fct)
	end

	def setEulerNValue()
		tol = 0.001
		val = 0.0;
		indx = 0;
		#print ["indx", "val", "valNew" ,'factorial', "tol"]; print "\n"			
			
		begin
			valtol = val;
			val  = val + ((getvalue+0.0) **indx)/setFactorialValue(indx)
			indx += 1

			
		#	print [indx, val,((val-valtol)/val).abs,(getvalue**indx), setFactorialValue(indx)]; print "\n"	
		end until (((val-valtol)/val).abs < tol)
	 	setEulerN(val)
	end



	def getCode()
		setCodeValue;
		return @Code
	end

	def getFactorial()
		setFactorialValuen();
		return @Factorial
	end

	def getDecode()
		setDecodeValue;
		return @Code
	end

	def getEuler()
		setEulerNValue;
		return @EulerN
	end

	def getvalue()
		return @value
	end
end