# GPS 2.2 Electronic Grocery List
=begin
PSEUDOCODE:

# 1. Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
    1. create an empty hash to populate with key/value pairs
    2. take the input string and use the .split method to separate the words (into an array)
    3. iterate through each item in the array:
    - adding them to the hash as as keys and
    - setting a default quantity value for each
    4. print the list to the console [can you use one of your other methods here?]
# output: return a hash populated with key/value pairs

2. Method to add an item to a list
# input: item name and optional quantity
# steps: assigning a new key with its associated value to our hash
# output: return the list with the new key/value pair in it to the console

3. Method to remove an item from the list
# input: item name
# steps: referencing the hash and using .delete(item name) to remove item (key and its value)
# output: return the list without the item (key/value pair) that was deleted

4. Method to update the quantity of an item
# input: item name and the quantity
# steps: reference the item and key and assign a new value ex: shopping_list[:bananas] = 4
# output: updated hash with new quantity for assigned to selected item

5. Method to print a list and make it look pretty
# input: the list (a hash) we want to print to the console
# steps: "#{item}: #{quantity}"
  - iterate through the hash
  - print each key with its associate value to the screen
# output: Return a message that references on separate lines each item included in the list and their quantity

    
=end
# puts "What would you like to add to your grocery list?"
# grocery_list[:item].gets.chomp

# Define a global variable as an empty hash
$grocery_list = {}

# 1. Method to create a list
def create_list(string)
  string.split(" ").each do |item|
    $grocery_list[item] = 1
  end
  $grocery_list
end

# create_list("bananas apples mangoes")

# 2. Method to add an item to a list
def add_item(item, quantity)
  $grocery_list[item] = quantity || 1
  $grocery_list
end

# add_item("carrots", 2)

# 3. Method to remove an item from the list
def remove_item(item)
  $grocery_list.delete(item)
  $grocery_list
end

# remove_item("bananas")

# 4. Method to update the quantity of an item
def update_quantity(item, quantity)
  $grocery_list[item] = quantity
  $grocery_list
end

# update_quantity("apples", 5)
# update_quantity("mangoes", 4)

# 5. Method to print a list
def print_list(list) 
  puts "Your grocery list includes:"

  list.each do |key, value|
    puts "#{key} = #{value}" 
  end
end



# Testing the methods above
p create_list("watermelon salmon")
p add_item("lemonade", 2)
p add_item("tomatoes", 3)
p add_item("onions", 1)
p add_item("ice cream", 4)
p remove_item("lemonade")
p update_quantity("ice cream", 2)

print_list($grocery_list)













