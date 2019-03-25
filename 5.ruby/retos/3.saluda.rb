# Saluda
# 100 putsuntos
# Hola Maker,
#
# Tu misión en este reto es crear una función saluda que reciba una cadena nombre y retorne el texto "Hola [nombre]" donde [nombre] es el valor de la cadena que se recibió por parámetro.
#
# Ejemplos:
#
# saluda("Pedro") #=> "Hola Pedro"
# saluda("Yu-kai Chou") #=> "Hola Yu-kai Chou"
# saluda("") #=> "Hola "
# Nota: Fíjate en el espacio después de "Hola".
#
# Instrucciones
# Escribe tu solución en el archivo solution.rb.

def saluda(nombre)
  nombre = 'Hola ' + nombre
  return nombre
end

p saluda("Pedro") #=> "Hola Pedro"
p saluda("Yu-kai Chou") #=> "Hola Yu-kai Chou"
p saluda("") #=> "Hola "
puts
puts saluda("Pedro") #=> "Hola Pedro"
puts saluda("Yu-kai Chou") #=> "Hola Yu-kai Chou"
puts saluda("") #=> "Hola "

#------------------------------

# Discusión: Saluda
# Nuestra solución es la siguiente:
#
# def saluda(nombre)
#   "Hola #{nombre}"
# end
# La mejor forma de concatenar cadenas en Ruby es usando un concepto llamado interpolación de texto, que nos permite incluir una variable dentro de una cadena como lo hicimos en esta solución.
#
# Nota: Aunque en Ruby se pueden definir las cadenas con comillas sencillas (') o comillas dobles ("), para que funcione la interpolación de texto debes usar comillas dobles (").
