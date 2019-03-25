
# Defaults para un hash
# 100 puntos
# El objetivo de este challenge es practicar el acceso y asignación de llaves sobre hashes.
#
# Instrucciones
# Escribe una función llamada defaults que recibe un único parámetro (un hash). La función debe retornar el mismo hash pero con los siguientes cambios:
#
# Si el hash no tiene la llave :temperature, asignarle el valor de 10.
# Si el hash no tiene la llave :altitude, asignarle el valor de 12000.
# Si el hash no tiene la llave :pressure, asignarle el valor de 500.

#-----------------------------------------------------

#Mi solución
#
def defaults(hash)

if hash.key?(:temperature)==false
  hash[:temperature] = 10
  hash
elsif hash.key?(:altitude) == false
  hash[:altitude] = 12000
  hash
elsif hash.key?(:pressure) == false
  hash[:pressure] = 500
  hash
else
  hash
end
end
#efaults(hash = {temperature:11,altitude:12,pressure:10})
p defaults(hash = {altitude:12,pressure:10})
p defaults(hash = {temperature:11,pressure:10})
p defaults(hash = {temperature:11,altitude:12})

# p defaults(hash = {temperature:temperature,altitude:altitude,pressure:pressure})
#-----------------------------------------------------

# #Buscar una llave dentro de un hash url https://stackoverflow.com/questions/4528506/how-to-check-if-a-specific-key-is-present-in-a-hash-or-not
# session = {"user"=>"mama","id"=>1}
# p session.key?("user") #=> true

#------------------------------------------------------
# hash = {temperature:temperature,altitude:altitude,pressure:pressure}

#Prueba de que fuciona la agregación de keys y values con condiconales
# hash = {altitude:1,pressure:2}
# if hash.key?(:temperature)==false
#   hash[:temperature] = 10
# elsif hash.key?(:altitude) == false
#   hash[:altitude] == 12000
# elsif hash.key?(:pressure) == false
#   hash[:pressure] = 500
# else
#   hash
# end
#
# p hash

#---------------------------------------------------------
