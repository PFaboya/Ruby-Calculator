
puts "Please type in b for the basic calculator and a for the advanced calculator"
type = gets.chomp

if type == "b"
  puts "basic Calculator selected, Please choose your first number"
  firstNumber = gets.chomp
  puts "Please Select your Operation"
  operation = gets.chomp
  puts "Please Select your second number"
  secondNumber = gets.chomp
  puts "Answer #{eval firstNumber + operation + secondNumber}"
elsif type == "a"
  puts "Adavanced Calculator selected, Please choose your first number"
  firstNumber = gets.chomp
  puts "Please Select power (**) or square root (sqrt)"
  operation = gets.chomp
  if operation == "**"
    puts "Please Select power"
    power = gets.chomp
    puts "Answer #{eval firstNumber + operation + power}"
  end
end
