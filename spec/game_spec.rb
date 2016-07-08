require './lib/srpipatila'

describe Juego do

  it "Jugador selecciona Papel y maquina escoje Piedra" do
    jugador = Juego.new
    jugador.seleccionar "Papel", 2
    jugador.resultado.should == "Ganas"
  end

  it "Jugador selecciona Piedra y maquina escoje Piedra" do
    jugador = Juego.new
    jugador.seleccionar "Piedra", 2
    jugador.resultado.should == "Empate"
  end


end
