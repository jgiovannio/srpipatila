require 'sinatra'
require './lib/srpipatila.rb'

enable :sessions

get '/' do
 erb :index
end

post "/Start" do
  session["name"] = params["j1"]
  session["dificultad"] = params["Facil"]
  session["com"] = ""
  session["resultado"] = ""
  session["eleccion"] = ""
  session["juego1"] = Juego.new
  erb :game
end

post "/jugarPiedra" do


  session["juego1"].seleccionar("Piedra")
  session["eleccion"] = "Piedra"
  session["resultado"] = session["juego1"].resultado
  if session["resultado"] == "Ganas"
    session["com"] = "Tijera"
  elsif session["resultado"] == "Empate"
    session["com"] = "Piedra"
  else
    session["com"] = "Papel"
  end

  #session["resultado"] = "Ganas"
#  @resultado = "Ganas"
  erb :game
end

post "/jugarPapel" do

  #session["com"] = "Piedra"
  session["juego1"].seleccionar("Papel")
  session["eleccion"] = "Papel"
  session["resultado"] = session["juego1"].resultado
  if session["resultado"] == "Ganas"
    session["com"] = "Piedra"
  elsif session["resultado"] == "Empate"
    session["com"] = "Papel"
  else
    session["com"] = "Tijera"
  end
  #session["resultado"] = "Ganas"
  erb :game
end

post "/jugarTijera" do
  #session["com"] = "Papel"
  session["juego1"].seleccionar("Tijera")
  session["eleccion"] = "Tijera"
  session["resultado"] = session["juego1"].resultado

  if session["resultado"] == "Ganas"
    session["com"] = "Papel"
  elsif session["resultado"] == "Empate"
    session["com"] = "Tijera"
  else
    session["com"] = "Piedra"
  end
  #session["resultado"] = "Ganas"
  erb :game
end

post "/jugarSr" do
  session["juego1"].seleccionar("Sr_Spock")
  session["eleccion"] = "Sr_Spock"
  #session["com"] = "Tijeras"
  session["resultado"] = session["juego1"].resultado
  #session["resultado"] = "Ganas"
  erb :game
end

post "/jugarLagartija" do
  session["juego1"].seleccionar("Lagartija")
  session["eleccion"] = "Lagartija"
  session["com"] = "Sr_Spock"
  session["resultado"] = session["juego1"].resultado
  #session["resultado"] = "Ganas"
  erb :game
end

post '/reiniciar' do
  erb :index
end
