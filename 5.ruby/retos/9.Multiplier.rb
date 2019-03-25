# Multiplier
# 120 puntos
# Instrucciones
# En el archivo solution.rb escribe una función llamada multiplier que recibirá dos argumentos, el primero será un arreglo de números y el segundo un número por el cual cada uno de los elementos del primer arreglo se multiplicará.
#
# Ejemplo:
#
# multiplier([1, 2, 3], 3) #=> [3, 6, 9]
# multiplier([1, 2, 3], 10) #=> [10, 20, 30]

def multiplier(array,num)

  array * num

end

p multiplier([1, 2, 3], 3) #=> [3, 6, 9]
p multiplier([1, 2, 3], 10) #=> [10, 20, 30]
