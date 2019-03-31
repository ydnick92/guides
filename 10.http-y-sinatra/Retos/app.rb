require "sinatra"

get '/' do
  @name = params[:nombre]
  erb :saludame_1
end
