class Juego

  OBJETOS = ["Papel" , "Piedra" ]

  def initialize
    @seleccion = ""
  end

  def seleccionar objeto
    @seleccion = objeto
  end

  def resultado
    if @seleccion == OBJETOS[0]
      return "Ganas"
    else
      return "Empate"
    end
  end

end
