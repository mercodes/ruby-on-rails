puts "Hello! What is your first name?"
first_name = gets.chomp
puts "Lovely! And your last name?"
last_name = gets.chomp
puts "Welcome to the Calc-o-matic #{first_name} #{last_name}!"
puts "According to my calculations, your first name has #{first_name.length} characters in it and your last name has #{last_name.length}."
full_name = first_name + " " + last_name
puts "Also, your name reversed reads #{full_name.reverse}. Pretty cool, huh?"


def multiply(first_number,second_number)
   first_number.to_f * second_number.to_f
end

def divide(first_number,second_number)
   first_number.to_f / second_number.to_f
end

def subtract(first_number,second_number)
   second_number.to_f - first_number.to_f
end

def mod(first_number,second_number)
   first_number.to_f % second_number.to_f
end

puts "Let's get to the math part now. Would you like to:"
puts "1)Multiply"
puts "2)Divide"
puts "3)Subtract"
puts "4)Find the remainder"
prompt = gets.chomp

puts "Input your first number"
first_number = gets.chomp
puts "Now please input a second number"
second_number = gets.chomp 

if prompt == '1'
	puts "You have chosen to multiply"
	result = multiply(first_number,second_number)
	puts "The result is #{result}. Have a nice day!"
elsif prompt == '2'
	puts "You have chosen to divide"
	result = divide(first_number,second_number)
	puts "The result is #{result}. Have a nice day!"
elsif prompt == '3'
	puts "You have chosen to subtract"
	result = subtract(first_number,second_number)
	puts "The result is #{result}. Have a nice day!"
elsif prompt == '4'
	puts "You have chosen to find the remainder"
	result = mod(first_number,second_number)
	puts "The result is #{result}. Have a nice day!"
else 
	puts "You have made an invalid choice"
end
