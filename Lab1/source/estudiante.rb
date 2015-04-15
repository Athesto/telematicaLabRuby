class Estudiante
@Promedio;
@Nombre
  def initialize()
  end

  def IntroducirNombre()
    puts"Nombre del Estudiante" 
    est=gets
    setNombre(est)
  end
  
  def NumerodeEval()
      puts"Total de notas"  
      num=gets.to_i
      return(num)
  end

  def Calificaciones(num)
    nota = Array.new(num)
    peso = Array.new(num)
    cont= 0
    prm = 0
    for i in(1..num)
      print("Porcentaje ",i,": ")
      peso[i]=gets.to_i
      cont=cont+peso[i]
    end
    if cont != 100
      system "cls"
      puts"El porcentaje de las evaluaciones fue incorrecto."
      textTitle(2)
      return(Calificaciones(num))
    end
    for i in(1..num)
      print("Nota ",i,": ")
      nota[i]=gets.to_i
      prm = prm + nota[i]*peso[i]/100.0
    end
    setPromedio(prm)
    

  end

  def Resultado()
    prm = getPromedio
    if(prm < 2.95)
     result=" ha perdido la materia"
    else
     result=" ha ganado la materia"
    end
    print"Nombre: "
    puts getNombre
    print"Promedio: "
    puts getPromedio
    print"El estudiante"
    puts result

  end

  def setPromedio(value)
    @Promedio=value
  end

  def getPromedio
    return(@Promedio)
  end

  def getNombre()
    return(@Nombre)
  end

  def setNombre(value)
    @Nombre=value
  end
end