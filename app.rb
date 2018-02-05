require "sinatra"

get '/cat' do
  @name_generator = ["Amigo","Oscar","Viking"].sample
  erb(:index)
end
