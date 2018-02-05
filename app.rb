require "sinatra"

get '/random-cat' do
  @name_generator = ["Amigo","Oscar","Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name_generator = params[:element]
  erb(:index)
end
