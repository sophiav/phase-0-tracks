puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
likes_garlic = gets.chomp

puts "Would you like to enroll in the company's health insurance? (yes/no)"
insurance = gets.chomp



current_year = 2016
vampire = ""


if (age == (current_year - birth_year)) && ((likes_garlic == "yes") || (insurance == "yes"))
  vampire = "Probably not a vampire"
end
if (age != (current_year - birth_year)) && ((likes_garlic == "no") || (insurance == "no"))
  vampire = "Probably a vampire"
end
if (age != (current_year - birth_year)) && (likes_garlic == "no") && (insurance == "no")
  vampire = "Almost certainly a vampire!"
end
if name == "Drake Cula" || name == "Tu Fang"
  vampire = "Definitely a vampire!!"
end
if vampire == ""
  vampire = "Results inconclusive"
end

puts "#{name} is: #{vampire}"

