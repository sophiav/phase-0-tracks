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

# if (age == (current_year - birth_year)) && ((likes_garlic == "yes") || (insurance == "yes"))
#   vampire = "Probably not a vampire"
# elsif (age != (current_year - birth_year)) && ((likes_garlic == "no") || (insurance == "no"))
#   vampire = "Probably a vampire"
# elsif (age != (current_year - birth_year)) && (likes_garlic == "no") && (insurance == "no")
#   vampire = "Almost certainly a vampire!"
# elsif name == "Drake Cula" || name == "Tu Fang"
#   vampire = "Definitely a vampire!!"
# else
#   vampire = "Results inconclusive "
# end

# puts "#{name} is: #{vampire}"



outcome = ""

vampire2 = case outcome

  when (age == (current_year - birth_year)) && ((likes_garlic == "yes") || (insurance == "yes"))
    outcome = "Probably not a vampire"
  when (age != (current_year - birth_year)) && ((likes_garlic == "no") || (insurance == "no"))
    outcome = "Probably a vampire"
  when (age != (current_year - birth_year)) && (likes_garlic == "no") && (insurance == "no")
    outcome = "Almost certainly a vampire!"
  when name == "Drake Cula" || name == "Tu Fang"
    outcome = "Definitely a vampire!!"
  else
     outcome = "Results inconclusive "
  end 

puts vampire2