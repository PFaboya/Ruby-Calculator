
puts "Please type in b for the basic calculator, a for the advanced calculator, bmi for bmi calculator and trip for the Trip Calculator"
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

elsif type == "trip"
  puts "Please enter distance to travel in miles"
  distance = gets.chomp
  distanceFloat= distance.to_f
  puts "Please enter your fuel effieciency in miles per gallon"
  mpg = gets.chomp
  mpgFloat = mpg.to_f
  puts "Please enter the cost per gallon in GBP"
  cost = gets.chomp
  costFloat = cost.to_f
  puts "Please enter your speed in MPH"
  speed = gets.chomp
  speedFloat = speed.to_f
  puts "Your Journey time will be #{distanceFloat/speedFloat} hours"
  if speed < "60"
    puts "The price of your trip will be #{((distanceFloat/mpgFloat) * costFloat).round 2} GBP"
  end
  if speed > "60"
    mpgReduce = speedFloat - 60
    mpgFloat += -(2 * mpgReduce)
    mpgString = mpgFloat.to_s
    puts "new fuel effieciency is #{mpgString} miles per gallon"
    puts "The price of your trip will be #{((distanceFloat/mpgFloat) * costFloat).round 2} GBP"
    if mpgFloat < 5
      mpgFloat = 5.0
      mpgString = mpgFloat.to_s
      puts "Minimum mpg is #{mpgFloat}"
    end
  else
    mpgSpring = mpgFloat.to_s
  end
end
