require './lib/srpipatila'

describe Juego do

  it "Jugador selecciona Papel y maquina escoje Piedra" do
    jugador = Juego.new
    jugador.seleccionar "Papel"
    jugador.resultado.should == "Papel cubre Piedra"
  end

end
