class Juego

  #OBJETOS_USUARIO = {"Papel" => 1 , "Piedra" => 3 , "Tijera" => 2 }
  OBJETOS_MAQUINA = ["Papel", "Piedra" , "Tijera"]
  OBJETOS_USUARIO = {1 => "Papel", 3 => "Piedra" , 2 => "Tijera" }

  def initialize
    @seleccion = ""
  end

  def seleccionar objeto
    @seleccion = objeto
  end

  def resultado
    maquina = Random.new
    resultado = maquina.rand(1..3).to_i
    if OBJETOS_MAQUINA[maquina.rand(0..2).to_i] == @seleccion
      return "Empate"
    elsif condition

    end

    #if OBJETOS_USUARIO[@seleccion] == maquina
      #return OBJETOS_USUARIO[@seleccion]
    #else
    #end
  end

end
