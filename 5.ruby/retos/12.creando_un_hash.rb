# Creando un hash
#
# 100 puntos
# El objetivo de este challenge es practicar la creación de hashes.
#
# Instrucciones
# Escribe una función llamada create_hash que recibe tres parámetros: temperature, altitude, y pressure. La función debe retornar un hash con tres llaves (temperature, altitude, y pressure) cuyo valor corresponde con el parámetro que tiene el mismo nombre. Las llaves deben ser símbolos no strings.
#
# Ejemplo:
#
# create_hash(23, 4500, 234) #=> { temperature: 23, altitude: 4500, pressure: 234}

#--------------------------------------------

# def create_hash(temperature,altitude,pressure)
def create_hash(temperature,altitude,pressure)
  hash = []
  keys = [:temperature,:altitude,:pressure]
  values = [temperature,altitude,pressure]

  hash = Hash[keys.map(&:to_sym).zip(values)]
end
p create_hash(23, 4500, 234) #=> { temperature: 23, altitude: 4500, pressure: 234}

#--------------------------------------------

#Forma de crear un hash con una keys y un values de hashesy combinarlos https://stackoverflow.com/questions/49891355/ruby-create-hash-with-keys-and-values-as-arrays
# If you're trying to create a hash from two corresponding arrays for keys and values, this is quick way:
#
# keys = ["a", "b", "c"]
# values = [1, 2, 3]
# hash = Hash[keys.zip(values)]
# # => {"a"=>1, "b"=>2, "c"=>3}
#
# # for symbols
# hash = Hash[keys.map(&:to_sym).zip(values)]
# # => {:a=>1, :b=>2, :c=>3}

#--------------------------------------------

# Discusión: Creando un hash

# Nuestra solución es la siguiente:
#
# def create_hash(temperature, altitude, pressure)
#   { temperature: temperature, altitude: altitude, pressure: pressure }
# end

# p create_hash(23, 4500, 234) #=> { temperature: 23, altitude: 4500, pressure: 234}
