puts "\e[H\e[2J"

users = [
  {username: 'Maria', password: 'password1'},
  {username: "Akshay", password: 'password2'},
  {username: "Thea", password: 'password3'},
  {username: "Sky", password: 'password4'},
  {username: "Bella", password: 'password5'}
]

puts "Welcome to the authenticator"
30.times { print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

ask_again = true
attempt = 4
key_given = false
while ask_again && attempt > 0 && !key_given
  print "Username: "
  name_ask = gets.chomp
  user = users.select { |hash| hash[:username] == name_ask}
  if user.empty?
    puts "Incorrect username. Please try again"
    next
  end
  while (attempt >= 0) && !key_given
  print "Password: "
  pass_ask = gets.chomp
  if user[0][:password] == pass_ask
    puts "Welcome to the system"
    ask_again = false
    key_given = true
    next
  else
    puts "Incorrect credentials. Please, try again. You have #{attempt} attempt(s) remaining"
    attempt -= 1
  end
  end
end

if key_given
  puts user
else
  puts "You did not get in. Sorry not sorry"
end
