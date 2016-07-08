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
#  juego1.seleccionar = "Piedra"

  session["resultado"] = "Ganas"
  erb :game
end

post "/jugarPapel" do
  session["resultado"] = "Pierdes"
  erb :game
end
