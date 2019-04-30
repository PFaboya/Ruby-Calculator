
puts "Please type in b for the basic calculator, a for the advanced calculator and bmi for bmi calculator"
type = gets.chomp

if type == "b"
  puts "basic Calculator selected, Please choose your first number"
  firstNumber = gets.chomp
  firstNumberFloat = (eval firstNumber).to_f
  firstNumberString = (firstNumberFloat).to_s
  puts "Please Select your Operation"
  operation = gets.chomp
  puts "Please Select your second number"
  secondNumber = gets.chomp
  puts "Answer #{eval firstNumberString + operation + secondNumber}"

elsif type == "a"
  puts "Adavanced Calculator selected, Please choose your first number"
  firstNumber = gets.chomp
  puts "Please Select power (**) or square root (sqrt)"
  operation = gets.chomp
  if operation == "**"
    puts "Please Select power"
    power = gets.chomp
    puts "Answer #{eval firstNumber + operation + power}"
  elsif operation == "sqrt"
    firstNumberFloat = firstNumber.to_f
    puts "Answer #{Math.sqrt(firstNumberFloat)}"
  end

elsif type == "bmi"
  puts "select measurement system, i for imperial and m for metric"
  measurement = gets.chomp
  if measurement == "m"
    puts "Please select your Height in metres"
    height = gets.chomp
    heightInt = height.to_f
    puts "Please select your weight in kilograms"
    mass = gets.chomp
    massFloat = mass.to_f
    puts "Answer #{massFloat / (heightInt ** 2)}"
  end
  if measurement == "i"
    puts "Please select your Height in inches"
    height = gets.chomp
    heightInt = height.to_f
    puts "Please select your weight in Pounds"
    mass = gets.chomp
    massFloat = mass.to_f
    puts "Answer #{(massFloat / (heightInt ** 2))*703}"
  end
end
