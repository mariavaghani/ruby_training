# 15.times{ puts rand(5..15)}


x = (1..10) # Range
puts x.class
x = (1..10).to_a #to create an array
(1..10).to_a.shuffle # to shuffle the numbers in the array
puts
print x.to_a.shuffle! # does not modify x
puts "\nx after shuffle!"
print x
puts
z = x.to_a.shuffle! # makes a
puts "Array z >>>>"
print z
