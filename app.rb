require "sinatra"

get '/random-cat' do
  @name = ["Amigo","Oscar","Viking"].sample
  erb(:index)
end

get '/named-cat-with-get' do
  @name = params[:name]
  erb(:index)
end
# On the console: 
# local host IP address                                           method        path              protocol
# 127.0.0.1 - - [05/Feb/2018:20:43:02 +0000] "GET /named-cat-with-get HTTP/1.1" 200 244 0.0252
# 127.0.0.1 - - [05/Feb/2018:20:43:06 +0000] "GET /named-cat-with-get?name=mikey HTTP/1.1" 200 88 0.0104

get '/cat-form' do
  erb(:form)
end

post '/named-cat-with-post' do
  @name = params[:name]
  erb(:index)
end
# On the console:
# 127.0.0.1 - - [05/Feb/2018:20:48:53 +0000] "GET /cat-form HTTP/1.1" 200 176 0.0239
# 127.0.0.1 - - [05/Feb/2018:20:49:09 +0000] "POST /named-cat-with-post HTTP/1.1" 200 88 0.0298
