# Pseudo-code:
# Initialize an empty hash
# Ask the user for their information
# Get user answers and convert them to the appropriate data type
# Update hash by creating key/value pairs from user questions/answers 
# Print the hash back out to the screen when done

# Initialize an empty hash called client
client = {}

# Create a method to convert answers to booleans
def convert_to_boolean(value)
  if value == "yes"
    true
  else
    false
  end
end


# User Interface
# Get user answers & convert them to key/value pairs for the client hash
puts "What is your client's name?"
client[:name] = gets.chomp

puts "Insert your client's email:"
client[:email] = gets.chomp

puts "Insert your client's phone number:"
client[:phone] = gets.chomp

puts "What is your client's budget?"
client[:budget] = gets.chomp.to_i

puts "Does your client have children (yes/no)?"
client[:has_children] = convert_to_boolean(gets.chomp)
    
puts "How many children does your client have?"
client[:number_of_children] = gets.chomp.to_i

puts "What is your client's favorite color?"
client[:fav_color] = gets.chomp

puts "What is the proposed decor-theme for your client?"
client[:decor_theme] = gets.chomp

puts "Does your client like minimalistic design (yes/no)?"
client[:minimalistic_design] = convert_to_boolean(gets.chomp)

# Check if the user wants to update an answer and if yes 
# update the appropriate hash key with the new value
puts "To update an answer insert the key you would like to update, otherwise say 'none'"
update = gets.chomp

if update != "none"
  puts "What value do you want for #{update}"
  client[update.to_sym] = gets.chomp
end

# Print the latest version of the hash and exit the program
p client
