# Mi primera función
# 120 puntos
# Hola Maker,
#
# Tu misión en este reto es crear una función suma que sume dos números y retorne el resultado.
#
# Ejemplos:
#
# suma(1, 2) #=> 3
# suma(0, 0) #=> 0
# suma(245, 923) #=> 1168
# Instrucciones
# En el archivo solution.rb escribe una función llamada suma que reciba dos argumentos y retorne la suma de esos dos parámetros.

def suma(num1,num2)
 num1 = num1
 num2 = num2
 num1 + num2
end


p suma(1, 2) #=> 3
p suma(0, 0) #=> 0
p suma(245, 923) #=> 1168
puts
puts suma(1, 2) #=> 3
puts suma(0, 0) #=> 0
puts suma(245, 923) #=> 1168

#-------------------------------

# Discusión: Mi primera función
# Nuestra solución es la siguiente:
#
# def suma(a, b)
#   a + b
# end
# Funciones
#
# Las funciones (en Ruby se les llaman métodos), son trozos de código que se pueden llamar desde otras partes del programa. Es una forma de reutilizar código.
#
# Los métodos funcionan como una caja negra: reciben cero o más parámetros (argumentos), y devuelven un valor (o nil si no se devuelve nada). En este reto, suma recibe dos argumentos y retorna un entero.
#
# En muchos lenguajes es necesario usar la palabra return a la hora de retornar el valor. En Ruby no es necesario, por defecto Ruby retorna el valor de la última línea que se ejecutó en el método.
#
# Nota: La forma en que funciona la evaluación de retos es que el sistema llama la función que creaste con diferentes argumentos y verifica que el valor de retorno sea el esperado.
