def order(arreglo,reverse=nil)
  if reverse == true
      arreglo.each do |numero|
        arreglo.sort
      end
  else
      arreglo.each do |numero|
        arreglo.sort { |a, b| b <=> a }
      end
  end
end
p order([1,2,4,3])


#__________________________________________________

#Probando sort y sort!

# reverse = false
# arreglo = [1,2,4,3]
#
# arreglo.each do
# arreglo.sort
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
# arreglo.sort!
# end
#
# puts "sort! modifica el arreglo original"
# p arreglo

#__________________________________________________

#Probando de forma descendente

# reverse = false
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
