#define a method that takes 3 parameters
# and returns an array with those parameters
def build_array(x, y, z)
  array = []
  array.push(x, y, z)
end

# add a method that takes an array and an item as parameters,
# and returns the array with the item added
def add_to_array(array, item)
  array << item
end

# use 'p' to print all of the below:
# Initialize an empty array and store it in a variable
friends = []
p friends

# Add 5 items to the array
friends.push("Kasha", "Chris", "Kyriacos", "Lambrini", "Jake")
p friends

# Delete the item at index 2
friends.delete_at(2)
p friends

# Insert a new item at index 2
friends.insert(2, "Maria")
p friends

# Remove the first item of the array without having to refer to its index
friends.shift
p friends

# Ask the array whether it includes a certain item
if friends.include?("Chris")
  puts "Array includes that item"
else
  puts "Array does not include the item"
end

# Initialize another array that already has a few items in it
family = ["mom", "dad", "dog", "cat"]
p family

# Add the 2 arrays together and store them in a new variable
everyone = friends + family
p everyone


# Method Calls
p build_array("Sophia", "Kasha", "Jake")
p add_to_array([1, 2, 3], 4)
p add_to_array(["test", "this"], "array")
p add_to_array(["ruby", 4], "arrays")
