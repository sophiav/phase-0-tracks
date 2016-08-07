# 1. Encrypt user password:
# Define a method called encrypt that accepts some string
# Declare an empty string we will add to
# Loop over string's characters one by one
# Declare a 'character' variable to store the result - a character - from string.index
# If character is a 'space' it should remain as 'space'
# If character is 'z' set it to 'a'
# Update the empty string from above as we loop over every character
# Increase the index count to avoid an infinite loop

def encrypt(string)
  index = 0
  str = ""

  while index < string.length
    character = string[index]
    
    if character == " "
      str += " "
    elsif character == "z"
      str += "a"
    else
      str += character.next
    end

  index += 1
  end

  str  
end


# 2. Decrypt user password:
# Define a method called decrypt that accepts some string
# Add alphabet variable to be used for checking character index 
# Declare an empty string we will add to
# Loop over string's characters one by one
# Declare a 'character' variable to store the result (a character) from string.index
# Declare a 'position' variable that will check and store the position (a number)
# of a character inside the alphabet variable 
# Declare a new variable that will check for the index of the preceding character
# Update the empty string from above as we loop over every character
# Increase the index count to avoid an infinite loop


def decrypt(string)
 
  index = 0
  a_z = "abcdefghijklmnopqrstuvwxyz"
  str = ""

  while index < string.length
    character = string[index]
    position = a_z.index(character)

    if character == " "
      str += " "
    else
      new_character = a_z[position - 1]
      str += new_character
    end
    
    index += 1
  end

  str
end

# puts decrypt(encrypt("swordfish")) 
# --> 
# The above nested method works because here the return value of 
# the encrypt method is the processed string and not 'nil' since
# have not used puts to output the result from that first method 
# - the value of the encrypt method is implicitly returned and 
# then used inside the decrypt method.



# Ask the user whether their choice: encrypt/decrypt password
# Store user choice in a variable
# Ask the user for their password
# Store the password in a variable
# Use conditional statements to run the preferred choice with user's password
# Print the output to the screen

puts "Would you like to 'encrypt' or 'decrypt' your password? Please choose either 'encrypt' or 'decrypt'."
user_choice = gets.chomp.downcase

puts "What's your non-numeric password?"
user_password = gets.chomp.downcase

if user_choice == "encrypt"
  puts "Your new password is: "  
  puts encrypt(user_password)
else
  puts "Your new password is: " 
  puts decrypt(user_password)
end



