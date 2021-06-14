class Student
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
  @email
  @Username
  @password

  def to_s
    "First name: #{@first_name} \nLast name: #{@last_name}"
  end

  def puts_smt
    puts "Puts something"
  end
end

maria = Student.new('Maria', 'Vaghani')
puts maria
maria.puts_smt
# maria.first_name = "Maria"
