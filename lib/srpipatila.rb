class Juego

  #OBJETOS_USUARIO = {"Papel" => 1 , "Piedra" => 3 , "Tijera" => 2 }
  OBJETOS_MAQUINA = ["Papel", "Tijera", "Piedra"]
  OBJETOS_USUARIO = {1 => "Papel", 3 => "Piedra" , 2 => "Tijera" }


  def initialize
    @seleccion = ""
    @sel_num = ""
  end

  def seleccionar objeto
    @seleccion = objeto
  end

  def resultado
    maquina = Random.new

    if @seleccion == "Papel"
      @sel_num = 0
    elsif @seleccion == "Tijera"
      @sel_num = 1
    elsif @seleccion == "Piedra"
      @sel_num = 2
    end


    if OBJETOS_MAQUINA[maquina.rand(0..2).to_i] == @seleccion
      return "Empate"
    elsif (maquina.rand(0..2).to_i == 0 && @sel_num == 2) || (maquina.rand(0..2).to_i == 2 && @sel_num == 0)



    end

    #if OBJETOS_USUARIO[@seleccion] == maquina
      #return OBJETOS_USUARIO[@seleccion]
    #else
    #end
  end

end
