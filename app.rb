puts "Hi, welcome to the car rental agency, please enter your age:"

age = 0

def check_age
  age = gets.strip.to_i
  puts "You entered your age as \"#{age}\", is this correct? [y/n]"
  age_confirmation = gets.strip
  if age_confirmation == "n"
    puts "Please re-enter your age:"
    check_age
  end
end

check_age

puts "Please enter the state you live in:"

state = gets.strip

flat_rate = 0

if state == "NY"
  flat_rate = 25
elsif state == "MI"
  flat_rate = 20
end

puts "How many days will you be renting your car?"

days = gets.strip.to_i

additional_fees = flat_rate + 20 * days

case age
when age < 21 then "You are too young too rent a car"
when age > 25 then "You will have no additional fees"
else puts "You will have $#{additional_fees} in additional fees"
end
