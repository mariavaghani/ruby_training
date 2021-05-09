#symbols in hashes
new_hash = {a: 5, b: 8, t: "Maria", r: "Akshay"}
p new_hash
puts new_hash[:a]
puts
print new_hash.keys
puts
print new_hash.values
puts
new_hash.each {|k,v| puts "The key of #{v} is #{k.class}"}

#.select works with hashes as well!!!
puts
print new_hash.select {|k,v| v.is_a?(String)}

new_hash.each { |k,v| new_hash.delete(k) if v.is_a? String}

puts
print new_hash
