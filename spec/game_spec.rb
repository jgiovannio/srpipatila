require './lib/srpipatila'

describe Juego do

  it "Jugador selecciona Piedra y maquina escoje Piedra" do
    jugador = Juego.new
    jugador.seleccionar "Piedra", 2
    jugador.resultado.should == "Empate"
  end

  it "Jugador selecciona Tijera y maquina escoje Tijera" do
    jugador = Juego.new
    jugador.seleccionar "Tijera", 1
    jugador.resultado.should == "Empate"
  end

  it "Jugador selecciona Papel y maquina escoje Papel" do
    jugador = Juego.new
    jugador.seleccionar "Papel", 0
    jugador.resultado.should == "Empate"
  end


  it "Jugador selecciona Piedra y maquina escoje Papel" do
    jugador = Juego.new
    jugador.seleccionar "Piedra", 0
    jugador.resultado.should == "Pierde"
  end

  it "Jugador selecciona Piedra y maquina escoje Tijera" do
    jugador = Juego.new
    jugador.seleccionar "Piedra", 1
    jugador.resultado.should == "Ganas"
  end

  it "Jugador selecciona Tijera y maquina escoje Papel" do
    jugador = Juego.new
    jugador.seleccionar "Tijera", 0
    jugador.resultado.should == "Ganas"
  end

  it "Jugador selecciona Tijera y maquina escoje Piedra" do
    jugador = Juego.new
    jugador.seleccionar "Tijera", 2
    jugador.resultado.should == "Pierde"
  end

  it "Jugador selecciona Papel y maquina escoje Tijera" do
    jugador = Juego.new
    jugador.seleccionar "Papel", 1
    jugador.resultado.should == "Pierde"
  end

  it "Jugador selecciona Papel y maquina escoje Piedra" do
    jugador = Juego.new
    jugador.seleccionar "Papel", 2
    jugador.resultado.should == "Ganas"
  end
end
