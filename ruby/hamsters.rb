puts "What is your hamster's name?"
name = gets.chomp

puts "How loud is this hamster. Give an answer from 1-10"
volume = gets.chomp.to_i

puts "What color is the hamster's fur?"
fur = gets.chomp

puts "Do you think the hamster is a good candidate for adoption (yes/no)?"
adoption = gets.chomp

puts "What is the hamster's age?"
user_answer = gets.chomp.to_f
age = nil

puts user_answer
if user_answer > 0.0
  age = user_answer
else
  age = "(N/A)"
end

puts "The hamster's name is #{name}, it is #{age} years old, with a #{fur} colored fur"
puts "On a scale from 1-10, the hamster's volume is #{volume}"
puts "Is this hamster a good candidate for adoption?: #{adoption}"
