require 'sinatra'

enable :sessions

get '/' do
 erb :index
end

post "/Start" do
  session["name"] = params["j1"]
  session["dificultad"] = params["Facil"]
  erb :game
end

post "/jugarPiedra" do
  session["resultado"] = "Ganas"
  erb :game
end

post "/jugarPapel" do
  session["resultado"] = "Pierdes"
  erb :game
end
