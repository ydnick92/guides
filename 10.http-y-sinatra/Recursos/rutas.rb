require "sinatra"

#Saluda a todos
#Es nuestro root
get '/' do
  #Todo lo que escribimos en una ruta es ruby
  unless params[:name] #Si params es nil, no existe, no se esta enviando, no existe la llave :name dentro del hash params, muestreme el string "Hola a todos"
    "Hola a todos"
  else
    "Hola mi nombre es #{params[:name]}" #En el caso de que exista muestreme el valor que este almacenado en la llave :name del hash params
  end
  #Para probar el condicional escribo en la URL http://localhost:4567/?name=teresa
  #Lo que hace la página es responder a argumentos opcionales que envia la URL a traves del query string

#------------------------------------
#podemos pegar el formulario en esta ruta y pasarlo a la ruta post, esto se puede hacer utilizando una esructura de ruby llamada
#hurt docs: En Ruby es un string muy largo o de varias lineas, entonces puedo incluir un formulario

#atributos en el formulario:
#action: es uno de los mas importantes, es la ruta a la cual le quiero pegar o a la ruta que queremos que se valla
#method: quiero que utilice el metodo post
#Con esta configuracion cuando le hagan submit se va a ir a la ruta "nuevo/objeto" con verbo post lo cual se mapea correctamente
#a la ruta que creamos abajo post '/nuevo/objeto'

#-------------------------------------

#Ahora creamos unos inputs a los cuales les agregamos atributos como:

#Primer input
#type = submit, que va a ser basicamente un boton que nos deja hacer clic en este formulario
#value

#Segundo input
#type= "text"
#name: este name dentro de los formularios es lo que se mapea a params, entonces lo que pase en name como nombre se va a ir a params como llave
#que despues va a ir al hash params y lo que el usuario escriba entre las casillas de texto es lo que queda mapeado a esta llave

<<-HTML
<form action= "/nuevo/objeto" method = "post">
  <input type = "text" name = "verbo"></input>
  <input type = "submit" value = "Estoy haciendo una petición POST"></input>
</form>
HTML
#Lo que enviemos en el name = "verbo" se va a imprimir en la ruta post '/nuevo/objeto'
end

#Trae el nombre que el usuario agregue en la ruta desde params
#Dinamicamente estamoscambiando el contenido de nuestra página, utilizando la información que Sinatra recibe desde el pat de la url
get '/:name' do
"Hola #{params[:name]}"
end

#Params se puede llenar o popular de llaves y valores a través de dar variables dinámicas al path
get '/:name/:age/:race' do
  p params
  "Nombre: #{params[:name]}, Edad: #{params[:age]}, Raza: #{params[:race]}"
end

#Otra forma de popular el params es con el query string(?) que es: con la ruta '/'
#para no obligar al usuario a estar presentes en la rutas

#Todo lo que va despues del ? en la URL, lo podemos llenar con llaves y valores, el ? se utiliza para agregar valores que son opcionales y no deben ir estrictamente en la ruta

#Sale en la terminal cuando escribo en la URL: http://localhost:4567/?name=Luna$age=14&race=terrier
# {"name"=>"Luna$age=14", "race"=>"terrier"}
# ::1 - - [30/Mar/2019:15:57:47 -0500] "GET /?name=Luna$age=14&race=terrier HTTP/1.1" 200 12 0.0016
# ::1 - - [30/Mar/2019:15:57:47 -05] "GET /?name=Luna$age=14&race=terrier HTTP/1.1" 200 12
# - -> /?name=Luna$age=14&race=terrier

#La ruta de verbo post HTTP se utiliza cuando deseamos crear algo dentro de un sistema de almacenamiento persistente(ejm: una base de datos)
#En el cual guardemos información y creemos información...vamos a crear la ruta post para crear un nuevo objeto
post '/nuevo/objeto' do
  #Aqui debe ir una logica que me permita  crear algo en la base de datos, vamos a simular eso con el siguiente string:
  "Hemos creado un nuevo objeto en la base de datos con el verbo #{params[:verbo]}" #Llega de la ruta root '/'
#pero esto no es lo que debe hacer una ruta de verbo post, ya que una ruta post no deberia devolver nada a la vista del navegador, sino que deberia
#crear el objeto y luego redireccionar a otra ruta que si sea GET y mostrar los resultados de la aplicación, pero por ejemplo de como funciona el POST se hizo asi


  #La forma mas usada de acceder a la ruta post es a traves de un formulario, ya que al poner esta ruta en la URL sinatra me va a decir que no encuentra la ruta get /nuevo/objeto, porque este solo recibe peticiones de usuario de tipo get
  #¿Por que un formulario? Porque esta es la forma en que un usuario ingresa información sobre algo nuevo que quiere crear (ejm: crear un nuevo usuario en una plataforma)
  #Entonces para ese caso creamos un formulario de registro...o voy a crear un nuevo post en facebook o un nuevo twit, entonces hay que escribir el contenido dentro de un formularios
  #Todos los formularios de Facebook o Twitter utilizan el verbo post y la agregan a este tipo de rutas

end
