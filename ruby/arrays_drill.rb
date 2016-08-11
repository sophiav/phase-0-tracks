def build_array(x, y, z)
  array = []
  array.push(x,y,z)
  p array
end


def add_to_array(par1, par2)
  array = par1
  array << par2
  p array
end


friends = []
p friends

friends.push("Kasha", "Sophia", "Kyriacos", "Chris", "Jake")
p friends

friends.delete_at(2)
p friends

friends.insert(2, "Maria")
p friends

friends.shift
p friends

if friends.include?("Chris")
  puts "Array includes that string"
else
  puts "Array does not include the string"
end


family = ["mom", "dad", "cousin", "sister"]
p family

everyone = friends + family
p everyone


puts build_array("Sophia", "Kasha", "Jake")
puts add_to_array([1, 2, 3], 4)
puts add_to_array(["Kasha", "Sophia"], "Jake")