puts "\e[H\e[2J"
puts "SIMPLE CALCULATOR"
30.times { print "-"}
puts
puts "Enter your query, separate numbers and operations with a space \nsupported operations are *,/,-,+, and %"
print "\n>>>>>      "
query = gets.chomp.split(' ')
num1 = query[0].to_f
num2 = query[2].to_f
op = query[1]
puts
30.times { print "-"}
puts
puts  "RESULT OF YOUR QUERY"
if op == '+'
  result = num1 + num2
elsif op == '-'
  result = num1 - num2
elsif op == '*'
  result = num1 * num2
elsif op == '/'
  result = num1 / num2
elsif op == '%'
  result = num1 % num2
end
puts result
