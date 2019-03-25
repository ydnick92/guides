# Ordenando el desorden
# 140 puntos
# Hola Maker,
#
# Tu misión en este reto es escribir un método llamado order que reciba dos argumentos, el primero será un arreglo de números y el segundo un booleano que llamaremos reverse el cual puede ser opcional.
#
# Si el valor de reverse es verdadero la función debe retornar el arreglo de mayor a menor, de lo contrario lo deberá organizar de menor a mayor.
#
# Ejemplo
# order([1, 2, 3], true) #=> [3, 2, 1]
# order([5, 2, 1, 3, 4]) #=> [1, 2, 3, 4, 5]
# Instrucciones
# Ingresa tu solución en el archivo solution.rb

#-------------------------------------

#Mi solucion

def order(arreglo,reverse=nil)
  if reverse == true
    arreglo.sort!{ |a, b| b <=> a }
  else
    arreglo.sort
  end
end
p order([1,2,4,3])

#----------------------------------------

# Discusión: Ordenando el desorden
# Nuestra solución es la siguiente:
#
# def order(arreglo, reverse=false)
#   if reverse
#     arreglo.sort.reverse
#   else
#     arreglo.sort
#   end
# end
# Podemos usar el operador ternario ? : para reducir la solución a una única línea:
#
# def order(arreglo, reverse=false)
#   reverse ? arreglo.sort.reverse : arreglo.sort
# end
# El operador ternario funciona de la siguiente forma:
#
# <condición> ? <si se cumple> : <si no se cumple>


#----------------------------------------

#Ejemplo de como hacerlo con un if en esta URL https://parzibyte.me/blog/2019/02/08/ordenar-arreglos-numericos-cadenas-ruby/

# edades = [15, 20, 55, 1, 20, 20, 48, 20, 55, 9, 65, 2, 2, 35, 77, 2, 5, 6]
# edades_descendentes = edades.sort{ |a, b|
# 	if a >= b
# 		-1
# 	elsif
# 	a <= b
# 		1
# 	else
# 		0
# 	end
# }
# p edades_descendentes
# p edades
# #__________________________________________________
#
# #Probando sort y sort!
#
# # reverse = false
# # arreglo = [1,2,4,3]
# #
# # arreglo.each do
# # arreglo.sort
# # end
# #
# # puts "sort NO modifica el arreglo original"
# # p arreglo
# #
# # puts "_______________"
# #
# # reverse = false
# # arreglo = [1,2,4,3]
# #
# # arreglo.each do
# # arreglo.sort!
# # end
# #
# # puts "sort! modifica el arreglo original"
# # p arreglo
#
# #__________________________________________________
#
# #Probando de forma descendente
#
# # reverse = false
# arreglo = [1,2,4,3]
#
# arreglo.each do
# arreglo.sort { |a, b| b <=> a }
#
# end
#
# puts "sort NO modifica el arreglo original"
# p arreglo
#
# puts "_______________"
#
# reverse = false
# arreglo = [1,2,4,3]
#
# arreglo.each do
# arreglo.sort.reverse!
# end
#
# puts "sort! modifica el arreglo original"
# p arreglo
