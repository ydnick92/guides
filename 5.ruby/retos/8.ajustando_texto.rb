#
# Ajustando texto
# 140 puntos
# Hola Maker,
#
# Tu misión en este reto es escribir un método que ajuste el texto de una cadena a la longitud determinada.
#
# Instrucciones
# En el archivo solution.rb escribe una función llamada adjust_text que reciba dos argumentos: una cadena de texto (string) y un número (length).
#
# La función debe ajustar el texto a la longitud que se especifique en el segundo parámetro. Si la longitud de la cadena es mayor que el valor del segundo parámetro, se debe cortar. de lo contrario, se debe completar con espacios.
#
# Ejemplos
# adjust_text("", 3) #=> "   "
# adjust_text("Hola", 0) #=> ""
# adjust_text("Hola", 10) #=> "Hola      "

#--------------------------------------------------------------------------------

#Prueba de que funciona traer la cantidad de letras que se piden en el parametro
#
# string = "hola"
# length = 2
# rank = (0..length)
# p string.length
# p string.slice(rank) #slice da una parte de un stringing, con la variable rank empieza desde la posicion 0 a la posicion que se de en length
# p string + (" " * length)

#--------------------------------------------------------------------------------

# #Mi solución  quedo bien
#
def adjust_text(string,length)
  rank = (-1..length)
  if string.length > length
    #cortar el string
    string.slice(rank)
  else
    #completar el string con espacios
    string + (" " * (length - string.length))
  end
end

p adjust_text("", 3) #=> "   "
p adjust_text("Hola", 0) #=> ""
p adjust_text("Hola", 10) #=>"Hola      "
puts
p adjust_text("", 3).length #=> "   "
p adjust_text("Hola", 0).length #=> ""
p adjust_text("Hola", 10).length #=>"Hola      "

#-----------------------------------------------------------------------------------

# Discusión: Ajustando texto
# Este reto se podía solucionar de varias formas. Nuestra solución es la siguiente:
#
# def adjust_text(text, length)
#   text.length < length ? text.ljust(length) : text[0...length]
# end
#
# p adjust_text("", 3) #=> "   "
# p adjust_text("Hola", 0) #=> ""
# p adjust_text("Hola", 10) #=>"Hola      "

# Estamos utilizando un operador ternario que tiene el siguiente formato: <condicion> ? <si condición es true> : <si condición es false>.
#
# Si el operador ternario te parece muy extraño, reescribámoslo con un if normal:
#
# def adjust_text(text, length)
#   if text.length < length
#     text.ljust(length)
#   else
#     text[0...length]
#   end
# end
#
# p adjust_text("", 3) #=> "   "
# p adjust_text("Hola", 0) #=> ""
# p adjust_text("Hola", 10) #=>"Hola      "

# El método ljust está documentado en el API de Ruby. Una buena práctica es ojear los métodos de clases como String para ver qué está incluido y qué podríamos usar en nuestro código.
#
# Un trozo de código interesante es la forma en que cortamos el texto con text[0...length]. A esto se le llama splice. 0...length es un rango.
