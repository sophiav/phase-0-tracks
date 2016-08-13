# =begin 
# Write a method that takes a block with some parameters.
# The method should include a message before and after
# it runs the block
# =end
# def person
#   name = "Emily"
#   age = 25
#   puts "Hi there #{name}!"
#   yield(name, age)
# end

# person { |name, age| puts "#{name} you are #{age} years old" }



# # Release 1:
# # Create an array and a hash
# groceries = ["salad", "carrots", "nuts"]
# groceries_cost = {"milk" => 2, "chocolate" => 3, "shampoo" => 5}

# # Use .each method on the array and hash
# groceries.each { |item| puts item }
# groceries_cost.each { |item, price| puts "The price of #{item} is $#{price}" }

# # Use .map method on the array and hash
# gorceries2 = []
# groceries2 = groceries.map { |item| item.upcase }

# groceries_cost2 = []
# groceries_cost2 = groceries_cost.map do |item, cost|
#   [item.capitalize, cost * 2] # returns an array
# end

# # Print data structures before and after method calls:
# puts "Original data:"
# p groceries
# p groceries_cost

# puts "After .each call"
# p groceries
# p groceries_cost

# puts "After .map call"
# p groceries2
# p groceries_cost2



# Release 2:

# Use a method to iterate through the items of a data structure
# deleting any that meet a certain condition
num1 = [1, 2, 3, 4, 5]
num1.delete_if { |number| number.even? }
p num1



# Use 2 methods that filter a data structure for only 
# items that satisfy a certain condition 
num2 = [1, 2, 3, 4, 5]
num2.keep_if { |number| number.even? }
p num2

num3 = [1, 2, 3, 4, 5]
num4 = num3.select { |x| x.even? }
p num4

# Use a method that will remove items from a data structure until
# the condition in the block evaluates to false, then stops
num5 = [10, 20, 30, 40, 50]
num5.reject! { |number| number < 30}
p num5







