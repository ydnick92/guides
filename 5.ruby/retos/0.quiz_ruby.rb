# 1.¿Cuál o cuáles de las siguientes expresiones generaría el resultado "hola mundo" dadas las siguientes variables?

# var1 = "hola"
# var2 = "mundo"
# # p var1 + " " + var2 #retorna el string => "hola mundo"
# # puts var1 + " " + var2  #imprime el string => hola mundo
# puts "#{var1} #{var2}"
# p "#{var1} #{var2}"
# # #=> "hola mundo"

# Las respuestas correctas son var1 + " " + var2 y "#{var1} #{var2}" :
#
# var1 + var2 generaría "holamundo".
# '#{var1} #{var2}' generaría "#{var1} #{var2}" (recuerda que para interpolar se necesitan comillas dobles).
# var2 + " " + var1 generaría "mundo hola".
# "var1 var2" generaría "var1 var2".


#---------------------------------------------------

#2. La forma de obtener la estatura del siguiente hash es:


# hash = { nombre: "Pedro", estatura: 1.8, edad: 28 }
# p hash[:estatura]    #=> 1.8
# puts hash[:estatura] #=> 1.8
# #=> 1.8


# ---------------------------------------------------

#3.¿Cuál sería la forma correcta de dividir la siguiente cadena en el arreglo ["a", "b", "c"]?

#
# str = "a-b-c"
# p str.split("-") # => ["a", "b", "c"]
# puts str.split("-")
# #=> a
# #=>b
# #=>c

# La respuesta correcta es str.split("-"). El método divide no existe y str.split divide la cadena por espacios.

#---------------------------------------------------

#4.¿Qué se imprimiría en pantalla al ejecutar el siguiente código?

# x = 5
# x += 2 if x < 5 # x no es menor que 5 entonces pasa a la siguiente linea
# puts x - 1      # x(5) - 1 = 4 , lo hace porque no cumplio if de la linea anterior
# p x - 1         # Si x es menor que 5 entonces hace las dos condiciones, le suma dos y le resta 1 a x

#=> 4

#La respuesta correcta es 4. Nunca va a entrar a la condición porque 5 no es menor que 5.
#---------------------------------------------------

#5. ¿En qué casos imprimiría "Hola mundo" el siguiente código?

# x = gets.chomp
# if true
#   puts "Hola mundo"     #=> Hola mundo
#   p "Hola mundo"        #=> "Hola mundo"
# end

#=> "Hola mundo", siempre lo imprime porque true siempre es verdadero y va a entrar en el if

# La respuesta correcta es "Siempre". La condición siempre evalúa a true y no depende de la variable x, así que siempre entra.

#---------------------------------------------------

#6.Los métodos en Ruby sólo pueden recibir uno o más argumentos.

#Verdadero

#Falso : creo porque a veces no es necesario que resiban argumentos http://rubytutorial.wikidot.com/metodos-argumentos

# Falso. Pueden recibir cero o más argumentos.
#---------------------------------------------------

#7. La forma correcta de definir un condicional con varias ramas en Ruby es:
#
# if condicion1
#   # código
# else if condicion2
#   #código
# else if condicion3
#   # código
# else
#   # código
# end
#
# Verdadero
#
# Falso : La forma correcta es con elsif asi:

# Falso. Es elsif en vez de else if.

# x= 1
# if x == 1
#   puts "Hola mundo"
#   p "Hola mundo"
# elsif x == 2
#   puts "Hola María"
# else
#   puts "Nada"
# end

#---------------------------------------------------

#8.¿Cuál es la forma correcta de obtener el valor 5 del siguiente arreglo?

# array = ["Pedro", true, 5]
# p array[2]        #=> 5
# puts array[2]     #=> 5

# La respuesta correcta es array[2]. Recuerda que las posiciones en los arreglos comienzan en 0

#---------------------------------------------------

#8. ¿Qué imprimiría en pantalla el siguiente código?

# num = 5
# 3.times { num = num + 5 }
#
# puts num
#=> 20    En x tenemos 5 y se itera tres veces sumando 5 seria x= 5 + 15

# La respuesta correcta es 20. La mejor forma es ir anotando los pasos:
#
# La variable num inicia en 5.
# La primera vez que entra al ciclo se le suma 5 así que num es ahora 10.
# La segunda vez que entra al ciclo se le suma 5 así que num es ahora 15.
# La tercera vez que entra al ciclo se le suma 5 así que num es ahora 20.
# La sintaxis del ciclo te puede parecer extraña pero es una forma de hacerlo en una sola línea. Se usa generalmente cuando el cuerpo del ciclo solo tiene una línea y es corta. La otra sintaxis es:
#
# 3.times do
#   num = num + 5
# end
#---------------------------------------------------

#9.Los paréntesis son opcionales cuando invocamos un método en Ruby.

# Verdadero: solo es necesario cuando llamamos algun parametro de la función o metodo.

# Verdadero. Por ejemplo:
#
# def suma(a, b)
#   a + b
# end
#
# suma(1, 4)
# suma 1, 4 # también es válido
# Si el método no recibe argumentos también podemos omitir los paréntesis:
#
# def hi
# end
#
# hi()
# hi # también es válido

#---------------------------------------------------

#10. ¿Cuáles son formas válidas de agregar un elemento al siguiente arreglo?

# array = []
# array.push(1)
# array << 2
# p array  #=>[1, 2]
# puts array     #=> 1
#                #=> 2

# Las formas válidas son array.push(1) y array << 1. Las demás generarían un error.

#---------------------------------------------------

#11.¿Cómo le asignamos el valor 5 a la variable x?
# x = 5
# p x      #=> 5   Los arroja igual porque es un integer o numero
# puts x   #=> 5

# La respuesta correcta es x = 5. Las demás generarían error.

#---------------------------------------------------

#12.¿Qué se imprimiría en pantalla al ejecutar el siguiente código?

# x = 10
# def my_method(y)
#   y + 1
# end
#
# puts my_method(x)    #=>11
# p my_method(x)       #=>11   el valor inicial de x = 10,y en el metodo definimos un parametro yº
                             # y ese parametro y se toma como x entonces y + 1 = x + 1 = 10 + 1 =11

#La respuesta es 11. La última línea está llamando el método my_method y le pasa el argumento x cuyo valor en ese momento es 10. El método my_method retorna el valor que le llega por parámetro (10) más uno, es decir 11, que es lo que se imprime.
#---------------------------------------------------

#12.Dada la siguiente función ¿cuál sería el resultado al invocar hello("Pedro")?

# def hello(name)
#   "Hola Pedro" if name == "Pedro"
#   "Hola Juan" if name == "Juan"
# end
#
# puts hello("Pedro") #=>
# p hello("Pedro")    #=>  nil, no se porque es nil en cambio si ponemos Juan si imprime el saludo(puts) y el string(p)

# La respuesta es nil. Este es un error muy común. La última expresión que se evalúa en el método no es "Hola Pedro", es el segundo if. Los ifs también son expresiones y retornan nil cuando la condición evalúa a false (si la condición evalúa a true retornan la evaluación de la última expresión del código que esté en ese if).

#---------------------------------------------------

#13.¿Cuál de las siguientes expresiones es un comentario válido en Ruby?

# Esto es un comentario

#---------------------------------------------------

#14.¿Cuál sería el resultado al evaluar la última línea?

# hash = { one: 1, two: 2, three: 3 }
# p hash['two']       #=> nil, porque Ruby siempre arroja algún valor así sea nada(nil), no encuentra la key porque es de string y en el arreglo es simbolo
# puts hash['two']    #=>

#La respuesta correcta es nil porque la llave es :two, no la cadena "two". Por defecto, cuando se intenta acceder a una llave que no existe retorna nil.

#---------------------------------------------------

#15.¿Cuál sería el resultado de la siguiente expresión?
#
# puts "YO" + "LO"  # => YOLO
# p "YO" + "LO"     # => "YOLO"

#---------------------------------------------------

#16.Un arreglo es un tipo de datos en donde cada valor está asociado a una llave de cualquier tipo.

#Falso

# Falso. Los hashes son los que coinciden con esa descripción.

#---------------------------------------------------

#17.¿Cuál sería el resultado de la siguiente expresión?
#
# p !true || (true || false)      #=> true  la primera evaluación es false y la segunda puede ser true o false y como tiene ||(o) desde que tenga un true sera verdadero,si fuera con && ambas tienen que ser verdaderas para que de true
# puts !true || (true || false)   #=> true

# La respuesta correcta es true. Podemos ir evaluando cada parte paso a paso. Empecemos con !true, que es la negación, así que quedaría:
#
# false || (true || false)
# Ahora evaluemos la expresión true || false de la derecha. El || es un ó, así que repasemos la tabla de verdad del ||:
#
# true || true -> true
# true || false -> true
# false || true -> true
# false ||false -> false
# La que nos aplica es la segunda, así que simplificando la expresión de la derecha queda:
#
# false || true
# De nuevo tenemos un ó y como uno de los lados es true el resultado también es true.

#---------------------------------------------------

#18.¿Cuál sería el resultado al evaluar el siguiente código?
#
# num = 5
# p "hola" + num #=> un error, porque en la variable hay almacenado un integer y no se puede sumar con un string sin interpolar #{} agregando ""
#
# # quiz_ruby.rb:197:in `+': no implicit conversion of Fixnum into String (TypeError)
# # 	from quiz_ruby.rb:197:in `<main>'


# La respuesta correcta es un error. Aunque en Ruby no es necesario declarar el tipo de las variables, no significa que no tengan un tipo. Ruby infiere el tipo de cada variable y no es posible hacer operaciones entre diferentes tipos. La forma de hacer funcionar este ejemplo para que imprima "hola5" es (cualquiera de las dos formas funciona):
#
# "hola" + num.to_s
# "hola#{num}"

#---------------------------------------------------

#19.¿Qué imprimiría el siguiente código?

# pedro = "Pedro"
# maria = pedro
# puts maria        #=> Pedro , la variable pedro se asigna a maria, y pedro es igual a "Pedro"
# p maria           #=> "Pedro"

# La respuesta correcta es "Pedro". La razón es que cuando ejecutamos la línea maria = pedro, realmente le estamos asignando a la variable maría el valor de la variable pedro.

#---------------------------------------------------

#20.¿Qué se imprimiría en pantalla al ejecutar el siguiente código?

# def decide(x)
#   if !x
#     "1"
#   else
#     "2"
#   end
# end
#
# puts decide(true) #=> 2, así x = true, el ! la niega y al ser falso entra en el else que contien a "2"
# p decide(true)    #=> "2"

# Esta es un poco truculenta, pero la respuesta es 2. El parámetro que estamos enviando es true, pero como en la condición del if lo estamos negando, sería false y por lo tanto no entra al if, entra al else y retorna "2" que es la última expresión que se evalúa.

#---------------------------------------------------

#21.En Ruby todos los métodos retornan algún valor.

#Verdadero

# Verdadero. Retornan el resultado de la última expresión que se evalúe y gracias a eso es posible omitir la palabra return (siempre y cuando el resultado sea la última expresión que se evalúe). Por ejemplo:
#
# def suma(a, b)
#   a+ b
# end
# Es equivalente a:
#
# def suma(a, b)
#   return a + b
# end

#---------------------------------------------------

#22.El mejor tipo de datos que podemos usar cuando necesitamos almacenar una lista de números es:

#Array

#---------------------------------------------------

#23.¿Cuáles de las siguientes expresiones son válidas en Ruby?

# puts "Hol’a mundo"
# puts 'Hol'a mundo'
# puts 'Hola "esto es una prueba ' #Expresión correcta
# puts Hola mundo
# puts "Hola mundo
