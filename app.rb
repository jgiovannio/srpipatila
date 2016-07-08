require 'sinatra'
require './lib/srpipatila.rb'

enable :sessions

get '/' do
 erb :index
end

post "/Start" do
  session["name"] = params["j1"]
  session["dificultad"] = params["Facil"]
  session["juego1"] = Juego.new
  erb :game
end

post "/jugarPiedra" do
  session["juego1"].seleccionar("Piedra")
  session["eleccion"] = "Piedra"
  session["com"] = "Tijera"
  session["resultado"] = session["juego1"].resultado
  session["resultado"] = "Ganas"
#  @resultado = "Ganas"
  erb :game
end

post "/jugarPapel" do
  session["juego1"].seleccionar("Papel")
  session["eleccion"] = "Papel"
  session["com"] = "Piedra"
  session["resultado"] = session["juego1"].resultado
  session["resultado"] = "Ganas"
  erb :game
end

post "/jugarTijera" do
  session["juego1"].seleccionar("Tijera")
  session["eleccion"] = "Tijera"
  session["com"] = "Papel"
  session["resultado"] = session["juego1"].resultado
  session["resultado"] = "Ganas"
  erb :game
end

post "/jugarSr" do
  session["juego1"].seleccionar("Sr_Spock")
  session["eleccion"] = "Sr_Spock"
  session["com"] = "Tijeras"
  session["resultado"] = session["juego1"].resultado
  session["resultado"] = "Ganas"
  erb :game
end

post "/jugarLagartija" do
  session["juego1"].seleccionar("Lagartija")
  session["eleccion"] = "Lagartija"
  session["com"] = "Sr_Spock"
  session["resultado"] = session["juego1"].resultado
  session["resultado"] = "Ganas"
  erb :game
end
