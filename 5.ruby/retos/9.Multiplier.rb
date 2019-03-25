# Multiplier
# 120 puntos
# Instrucciones
# En el archivo solution.rb escribe una función llamada multiplier que recibirá dos argumentos, el primero será un arreglo de números y el segundo un número por el cual cada uno de los elementos del primer arreglo se multiplicará.
#
# Ejemplo:
#
# multiplier([1, 2, 3], 3) #=> [3, 6, 9]
# multiplier([1, 2, 3], 10) #=> [10, 20, 30]

#----------------------------------------------
# #Mi solución
def multiplier(array,num)
 array.grep(Numeric).map{|e| e * num}
end

p multiplier([1, 2, 3], 3) #=> [3, 6, 9]
p multiplier([1, 2, 3], 10) #=> [10, 20, 30]

#---------------------------------------------
# #Así se puede multiplicar un array por un integer https://stackoverflow.com/questions/44939123/how-to-multiply-each-number-in-array-by-2-in-ruby
# p ['a', 2, 2.5].grep(Numeric).map{|e| e*2}
# p ['a', 1, 2, 3].grep(Numeric).map{|e| e*5}

# p [1,2,3].grep(Numeric).map{|e| e * 5}

#---------------------------------------------

# Discusión: Multiplier
# Nuestra solución es la siguiente:
# #
# def multiplier(arreglo, num)
#   arreglo.map { |i| i * num }
# end
#
# p multiplier([1, 2, 3], 3) #=> [3, 6, 9]
# p multiplier([1, 2, 3], 10) #=> [10, 20, 30]
# puts
# puts multiplier([1, 2, 3], 3) #=> [3, 6, 9]
# puts multiplier([1, 2, 3], 10) #=> [10, 20, 30]
