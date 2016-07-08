require './lib/srpipatila'

describe Juego do

  it "Jugador selecciona Papel y maquina escoje Piedra" do
    jugador = Juego.new
    jugador.seleccionar "Papel"
    jugador.resultado.should == "Ganas"
  end

  it "Jugador selecciona Piedra y maquina escoje Piedra" do
    jugador = Juego.new
    jugador.seleccionar "Piedra"
    jugador.resultado.should == "Piedra"
  end


end
