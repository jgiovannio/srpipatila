require 'sinatra'

get '/' do
 erb :index
end

post "/Start" do
  @name = params["j1"]
  erb :game 
end
