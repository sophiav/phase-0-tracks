# GPS 2.2 Electronic Grocery List

=begin
PSEUDOCODE:
# 1. Method to create a list
# input: string of items separated by spaces (example: "carrots apples pizza")
# steps: 
    1. create an empty list (hash) to populate with our item/quantity pairs
    2. take the input string and use a method to separate the words at the space (forming an array)
    3. iterate through each word (item) in the array:
       - adding them to the hash as as keys and
       - setting a default quantity value for each
# output: return a list populated with individual item/quantity pairs

2. Method to add an item to a list
# input: item name and optional quantity
# steps: assign a new item with its associated quantity to our list
# output: return the list with the new item/quantity pair

3. Method to remove an item from the list
# input: item name
# steps: reference the hash and provide the name of the item we want to delete in parentheses 
  (this will delete the item and its associated quantity from our list)
# output: return the list without the item (key/value pair) that was deleted

4. Method to update the quantity of an item
# input: item name and quantity
# steps: reference the item we want to update in our list by name and assign a new value to it i.e. list[item] = new value 
# output: updated list with new quantity assigned to the selected item

5. Method to print a list and make it look pretty
# input: the list (a hash) we want to print to the console
# steps: "#{item}: #{quantity}"
  - Write a message to print to the screen that will indicate what the output printed is
  - iterate through the items in our list (hash) and print each item with its associate value to the screen
# output: Return a message that references on separate lines each item included in the list and their quantity
=end


# Define a global variable as an empty hash
$grocery_list = {}


# 1. Method to create a list
def create_list(string, value=1)
  string.split(" ").each do |item|
    $grocery_list[item] = value
  end
  # puts "Initial list created:"
  $grocery_list
end
# create_list("bananas apples mangoes")


# 2. Method to add an item to a list
def add_item(item, quantity=1)  #set the default value of quantity to 1 in case none is provided
  $grocery_list[item] = quantity  #or can use: quantity || 1 to alternatively set a default value 
  # puts "List with new item #{item} added:"
  $grocery_list
end
# add_item("carrots", 2)


# 3. Method to remove an item from the list
def remove_item(item)
  $grocery_list.delete(item)
  # puts "List with #{item} deleted"
  $grocery_list
end
# remove_item("bananas")


# 4. Method to update the quantity of an item
def update_quantity(item, quantity)
  # puts "List with updated value of #{quantity} for #{item}:"
  $grocery_list[item] = quantity
  $grocery_list
end
# update_quantity("apples", 5)


# 5. Method to print a list
def print_list(list) 
  puts "Your grocery list includes:"

  list.each do |key, value|
    puts "#{key} = #{value}" 
  end
end
# print_list($grocery_list)


# Testing the methods above:
p create_list("watermelon salmon")
p add_item("lemonade", 2)
p add_item("tomatoes", 3)
p add_item("onions", 1)
p add_item("ice cream", 4)
p remove_item("lemonade")
p update_quantity("ice cream", 2)

print_list($grocery_list)



# Reflection:
=begin
1.
Clear and precise pseudo code with ordered step by step instructions and defined 
input and output arguments helps to better structure the thinking of how we can start
building our methods while testing that they are doing what we expect them to do

2. 
Since we had to build a shopping list that would take both items and their associated
quantities for this challenge the best approach was to use a hash. Using an array 
would not work as there was no way to associate the values we wanted with our items
in the shopping list and we would end up with just a list of strings and numbers that
did not have any obvious connections between them.

3.
Methods implicitly return the value of their last evaluated expression. In this 
challenge we defined the methods to explicitly return the updated grocery list 
following the operations performed inside the methods. 

4.
The arguments passed in a method call can be anything from strings, numbers and other
variables, to arrays and hashes, or other methods we have defined in our program.

5.
To pass information between methods you can simply pass different method calls as
arguments to other methods. The return value of those method calls is what is actually 
being passed as the argument to the method so we need to be aware of what a method's 
return value is before we try to pass it as an argument to another method.

6.
This challenge definitely helped me understand how to best use methods to break tasks
down into individual pieces or blocks of code that do 1 particular thing - that can 
be perhaps combined if needed later. Also it was extra practice in working hashes and the 
different ways that hashes can be created and modified. 

Overall though i felt that working with these concepts under pressure and within the time 
limitations of the exercise definitely proved challenging for me and even though i feel i 
can understand the concepts individually having to combine them and use them in a program
was something i struggled with. And that's silly actually because nothing really changes
in the logic of the code we want to implement if we just insert that logic in a method, and 
I GET THAT, which just tells me that i basically have to have more practice in dealing with
challenges that include this sort of 'complexity' and combine concepts rather than practicing
each one individually.
=end






