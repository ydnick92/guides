# FizzBuzz
# 120 puntos
# Hola Maker,
#
# Tu misión en este reto es diseñar y escribir un método llamado fizz_buzz que reciba como único argumento un número. El método debe cumplir las siguientes condiciones:
#
# Si el número de entrada es múltiplo de 3 debe retornar el string fizz
#
# Si el número de entrada es múltiplo de 5 debe retornar el string buzz
#
# Si el número de entrada es múltiplo tanto de 3 como de 5 debe retornar el string fizzbuzz
#
# Si el número no cumple ninguna de estas condiciones debe retornar el mismo numero de entrada
#
# Instrucciones
# En el archivo llamado solution.rb escribe tu solución.

#-----------------------------------------------
#Mi solucióna

def fizz_buzz(num)
  if num % 3 == 0 && num % 5 == 0
  "fizzbuzz"
  elsif num % 3 == 0
    "fizz"
  elsif num % 5 == 0
    "buzz"
  else
    num
  end
end

p fizz_buzz(5)
puts fizz_buzz(5)

#--------------------------------------------------

# Discusión: FizzBuzz
# Nuestra solución es la siguiente:

# def fizz_buzz(num)
#   if num % 3 == 0 && num % 5 == 0
#     "fizzbuzz"
#   elsif num % 3 == 0
#     "fizz"
#   elsif num % 5 == 0
#     "buzz"
#   else
#     num
#   end
# end
#
# p fizz_buzz(5)
# puts fizz_buzz(5)

# Uno de los errores más comunes cuando se está aprendiendo a programar es confundir el operador de asignación = con el de comparación ==.

#--------------------------------------------------

#Solución con operador ternario

# def fizz_buzz num
# return 'fizzbuzz' if num % 3 == 0 && num % 5 == 0
# return 'fizz' if num % 3 == 0
# return 'buzz' if num % 5 == 0
# num
# end
#
# p fizz_buzz(5)
# puts fizz_buzz(5)
