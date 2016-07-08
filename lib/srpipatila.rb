class Juego

  #OBJETOS_USUARIO = {"Papel" => 1 , "Piedra" => 3 , "Tijera" => 2 }
  OBJETOS_MAQUINA = ["Papel", "Tijera", "Piedra"]
  OBJETOS_USUARIO = {1 => "Papel", 3 => "Piedra" , 2 => "Tijera" }


  def initialize
    @seleccion = ""
    @sel_num = ""
    @com = Random.new.rand(0..2).to_i
  end

  def seleccionar objeto, maquina
    @seleccion = objeto
    @com = maquina
  end

  def resultado

    if @seleccion == "Papel"
      @sel_num = 0
    elsif @seleccion == "Tijera"
      @sel_num = 1
    elsif @seleccion == "Piedra"
      @sel_num = 2
    end


    if OBJETOS_MAQUINA[@com] == @seleccion
      return "Empate"
    elsif (@com && @sel_num == 2)
      return "Pierde"
    else
      return "Ganas"
    end

    #if OBJETOS_USUARIO[@seleccion] == maquina
      #return OBJETOS_USUARIO[@seleccion]
    #else
    #end
  end

end
