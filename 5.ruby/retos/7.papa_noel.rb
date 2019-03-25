# Papá Noel
# 100 puntos
# Hola Maker,
#
# Tu misión en este reto es escribir un método llamado santa_claus que reciba un único parámetro: un número. La función debe retornar la cadena 'jo' el número de veces que llega en el parámetro.
#
# Ejemplo:
#
# santa_claus(0) #=> ""
# santa_claus(1) #=> "jo"
# santa_claus(3) #=> "jojojo"
# Instrucciones
# Ingresa tu solución en el archivo solution.rb

def santa_claus(num)
  str = "jo"
  str * num
end

p santa_claus(3)

#-------------------------

# Discusión: Papá Noel
# Nuestra solución es la siguiente:
#
# def santa_claus(num)
#   "jo" * num
# end
