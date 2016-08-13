=begin 
Write a method that takes a block with some parameters.
The method should include a message before and after
it runs the block
=end
puts "Release 0:"
def person
  name = "Emily"
  age = 25
  puts "Hi there #{name}!"
  yield(name, age)
end

person { |name, age| puts "#{name} you are #{age} years old" }


puts "Release 1:"
# Create an array and a hash
groceries = ["salad", "carrots", "nuts"]
groceries_cost = {"milk" => 2, "chocolate" => 3, "shampoo" => 5}

# Use .each method on the array and hash
groceries.each { |item| puts item }
groceries_cost.each { |item, price| puts "The price of #{item} is $#{price}" }

# Use .map method on the array and hash
gorceries2 = []
groceries2 = groceries.map { |item| item.upcase }

groceries_cost2 = []
groceries_cost2 = groceries_cost.map do |item, cost|
  [item.capitalize, cost * 2] # returns an array
end

# Print data structures before and after method calls:
puts "Original data:"
p groceries
p groceries_cost

puts "After .each call"
p groceries
p groceries_cost

puts "After .map call"
p groceries2
p groceries_cost2



puts "Release 2:"
# Use a method to iterate through the items of a data structure
# deleting any that meet a certain condition
numbers = [1, 2, 3, 4, 5]
numbers.delete_if { |digit| digit.even? }
p numbers

prices = {"a" => 120, "b" => 195, "c" => 210, "d" => 150}
prices.delete_if { |item, price| price > 200 }
p prices

# Use 2 methods that filter a data structure for only 
# items that satisfy a certain condition 
# Array:
letters = ["a", "b", "c", "d", "e"]
letters.keep_if { |letter| letter >= "c" }
p letters

pokemon = ["Paras", "Squirtle", "Zubat", "Pikachu", "Pidgey"]
choice = pokemon.select { |char| char == "Pikachu" }
p choice

# Hash:
lucky_number = {"Alex" => 7, "Eric" => 3, "Max" => 5, "Jake" => 7}
lucky_number.keep_if { |name, number| number == 7 }
p lucky_number

car_speed = {"A" => 50, "B" => 60, "C" => 65, "D" => 92 }
ticket = car_speed.select { |car, speed| speed > 80 }
p ticket

# Use a method that will remove items from a data structure until
# the condition in the block evaluates to false, then stops
age = [18, 22, 21, 30, 17, 27]
age.reject! { |number| number < 21}
p age

grades = {"A" => 100, "B" => 80, "C" => 60, "D" => 40 }
grades.reject! { |grade, mark| grade == "D" }
p grades







