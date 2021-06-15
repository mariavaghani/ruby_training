require_relative 'crud'

class Student

  include Crud

  attr_accessor :first_name, :last_name, :email
  attr_reader :username, :password
  @email
  @Username
  @password


  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "\tFirst name: #{@first_name}\n\tLast name: #{@last_name}\n\tUsername: #{@username}\n\tEmail: #{@email}"
  end

  def set_username=(username_val)
    @username = username_val
  end

  def puts_smt
    puts "Puts something"
  end
end

maria = Student.new('Maria', 'Degtyareva', "MariaVagh", 'mariavagh@gmail.com', 'password1')

hashed_password = maria.create_hash_digest(maria.password)
puts hashed_password
