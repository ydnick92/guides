# Un poco de lógica
# 120 puntos
# Hola Maker,
#
# Tu misión en este reto es crear un metodo llamado alive? que reciba dos argumentos llamados playerName y points
#
# alive? debe retornar verdadero si playerName es igual a "ikk" y points es mayor a 30, o si playerName es igual a "gut" y points es mayor a 10. De lo contrario, debe retornar falso.
#
# Ejemplos:
#
# alive?("ikk", 50) #=> true
# alive?("gut", 50) #=> true
# alive?("ikk", 20) #=> false
# alive?("gut", 5) #=> false
# alive?("trek", 50) #=> false
# Instrucciones
# Escribe tu solución en el archivo solution.rb

#------------------------------------------------
#Mi solución

def alive?(playerName,points)
  if (playerName == "ikk" && points > 30) || (playerName == "gut" && points >10)
    true
  else
    false
  end
end

p alive?("ikk", 50) #=> true
p alive?("gut", 50) #=> true
p alive?("ikk", 20) #=> false
p alive?("gut", 5) #=> false
p alive?("trek", 50) #=> false

#----------------------------------

# Discusión: Un poco de lógica
# Nuestra solución es la siguiente:
#
# def alive?(player_name, points)
#   (player_name == "ikk" && points > 30) || (player_name == "gut" && points > 10)
# end
#
# p alive?("ikk", 50) #=> true
# p alive?("gut", 50) #=> true
# p alive?("ikk", 20) #=> false
# p alive?("gut", 5) #=> false
# p alive?("trek", 50) #=> false
