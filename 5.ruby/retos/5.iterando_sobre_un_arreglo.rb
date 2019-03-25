# Iterando sobre un arreglo
# 120 puntos
# Hola Maker,
#
# Tu misión en este reto es escribir un método llamado count_matches que reciba dos parámetros: un arreglo de números y un número. La función debe devolver el número de veces que aparece el número (segundo parámetro) en el arreglo (primer parámetro).
#
# Ejemplo:
#
# count_matches([1], 1) #=> 1
# count_matches([3, 2, 3], 3) #=> 2
# count_matches([1], 3) #=> 0
# Instrucciones
# Ingresa tu solución en el archivo solution.rb.

def count_matches(numbers,value)
  #numbers.each do |number|
    numbers.count(value)
  #
end


p count_matches([1], 1) #=> 1
p count_matches([3, 2, 3], 3) #=> 2
p count_matches([1], 3) #=> 0
puts
puts count_matches([1], 1) #=> 1
puts count_matches([3, 2, 3], 3) #=> 2
puts count_matches([1], 3) #=> 0

#----------------------------------------

# Discusión: Iterando sobre un arreglo
# Nuestra solución es la siguiente:
#
# def count_matches(arreglo, num)
#   count = 0
#   arreglo.each do |item|
#     count += 1 if num == item
#   end
#   count
# end
# Claro, Ruby es muy expresivo y nos permite hacer:
#
# def count_matches(arreglo, num)
#   arreglo.count(num)
# end
