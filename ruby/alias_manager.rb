=begin 
Release 1:
  Pseudocode and write a method that takes a spy's real name
  and creates a face name with it by doing the following:
  1. Swapping the first and last name
  2. Changing all the vowels to the next vowel, and all the 
  consonants to the next consonant in the alphabet
Release 2:
  Ask user for new input to modify. Stop asking when they type 'quit'
Release 3:
  Store the modified names in a data structure.
  Print a message to the screen to include original and modified name
=end

# # start with an empty string for the name and an empty hash
# initial_name = ""
# spy_database = {}

# # Ask user for name to modify. Repeat this until they type 'quit'
# while initial_name != 'quit'
#   puts "Enter a name you want to modify. When you are done type: quit"
#   initial_name = gets.chomp
#   downcase_name = initial_name.downcase

#   # if user types 'quit' stop the loop
#   break if initial_name == 'quit'

#   # reverse the order of first and last name
#   name_reversed = downcase_name.split(' ').reverse.join(' ')

#   # split the name into an array of characters 
#   name_split = name_reversed.split('')

#   # iterate through array characters and modify them accordingly
#   # if character is a vowel return the next vowel in the alphabet
#   # if character is a consonant return the next consonant in the alphabet
#   modified_letters = name_split.map do |character|
#     vowels = "aeiou"
#     consonants = "bcdfghjklmnpqrstvwxyz"

#       if vowels.include? character
#         index = vowels.index(character)
#         if index < vowels.length - 1
#           character = vowels[index + 1]
#         else
#           character = vowels[0]
#         end 
#       elsif consonants.include? character
#         index = consonants.index(character)
#         if index < consonants.length - 1
#           character = consonants[index + 1]
#         else
#           character = consonants[0]
#         end
#       else character == " "
#         character = " "
#       end

#   end


#   # Join the modified array characters to form a new modified name
#   modified_name = modified_letters.join('')
#   # p modified_name 

#   # Capitalize each word in modified_name to retrieve new spy_name
#   spy_name = modified_name.split(' ').map{|words| words.capitalize}.join(' ')
#   # p spy_name

#   # store initial_name and spy_name pairs in a database
#   spy_database.store(initial_name, spy_name)

# end



# # Print the spy_database to the screen
# p spy_database

# # Print a new message to the screen matching intial_name and spy_name
# spy_database.each do |initial_name, spy_name|
#   puts "#{initial_name} is also known as #{spy_name}"
# end


# ALTERNATIVE WAY: BETTER WAY WITH METHODS
puts 'What is your real name?'
real_name = gets.chomp

# Swap the first and last name
# Change vowels to the next vowel
# Change consonants to the next consonant

# Method to swap first and last names
def swap(real_name)
  real_name.split(" ").reverse.join(" ")
end

# Method to find the next letter
def next_letter(name)
  vowels = "aeiou".split("")
  consonants = "bcdfghjklmnpqrstvwxyz".split("")
  spy_name = []
  
  name.split("").map do |letter|
    if vowels.include?(letter)
      vowels.index(letter)
      index = vowels.index(letter)
      new_letter = vowels[index + 1]
      new_letter
    elsif consonants.include?(letter)
      consonants.index(letter)
      index = consonants.index(letter)
      new_letter = consonants[index + 1]
      new_letter
    elsif letter == " "
      new_letter = " "
      new_letter
    end
    spy_name.push(new_letter)
  end
  
  spy_name.join("")
end

# Method to capitalize first and last names
def capitalize(name)
  secret_name = name.split(" ").map do |word|
    word.capitalize
  end
  secret_name.join(" ")
end

# Method to call all 3 methods above in 1 place
def spy_name(real_name)
  capitalize(next_letter(swap(real_name)))
end


# Driver Code
puts "Agent's real name swapped is:"
p name_swapped = swap(real_name)
puts "==============================================="
# puts "Agent's spy name is:"
# p spy_name = next_letter(name_swapped)

# p secret_name = capitalize(spy_name)

p spy_name(real_name)




