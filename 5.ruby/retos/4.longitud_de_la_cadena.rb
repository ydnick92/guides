# Encuentra la longitud de la cadena
# 100 puntos
# Hola Maker,
#
# Tu misión en este reto es crear un método longitud que encuentre la longitud de una cadena (string).
#
# Ejemplos:
#
# longitud("") #=> 0
# longitud("Hola") #=> 4
# longitud("You Rock") #=> 8 (contando el espacio)
# Instrucciones
# En el archivo solution.rb escribe un método llamado longitud que reciba un argumento: una cadena (string). La función debe retornar la longitud de la cadena.

def longitud(string)
  string.length
end

p longitud("") #=> 0
p longitud("Hola") #=> 4
p longitud("You Rock") #=> 8 (contando el espacio)
puts
puts longitud("") #=> 0
puts longitud("Hola") #=> 4
puts longitud("You Rock") #=> 8 (contando el espacio)

#-----------------------------------------------------

# Discusión: Encuentra la longitud de la cadena
# Nuestra solución es la siguiente:
#
# def longitud(cadena)
#   cadena.length
# end
# También funciona cadena.size.
#
# En este reto estamos llamando un método sobre un objeto de tipo String que está almacenado en la variable cadena.
#
# El API de Ruby
#
# Todos las clases y métodos que trae Ruby por defecto están documentados en http://ruby-doc.org/. Si ingresas encontrarás dos secciones: Ruby Core y Standard Library. Ingresa a la última versión de Ruby Core. Puedes, por ejemplo, buscar la clase String y revisar la documentación del método length.
