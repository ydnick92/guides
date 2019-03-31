require "sinatra"

get '/' do
  unless params[:name]
    "Hola a todos"
  else
    "Hola mi nombre es #{params[:name]}"
  end
  @nombre = "Juan" #Al crear esta variable de instancia y ponerle el @, lo que va a hacer sinatra es que me va a dejar que esta variable sea disponible dentro del documento index.erb que estamos desplegando al final de nuestra ruta, por lo cual puedo usar la variable @nombre dentro de mi documento html
  erb :index
end

# ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥

get '/:name' do
"Hola #{params[:name]}"
end

# ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥

post '/nuevo/objeto' do
  "Hemos creado un nuevo objeto en la base de datos con el verbo #{params[:verbo]}"
end
