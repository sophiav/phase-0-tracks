puts "How many employees will be processed today?"
employee_number = gets.chomp.to_i

processing_counter = 0

until processing_counter == employee_number

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

  puts "Name - one at a time - any known allergies you may have. When you are finished type 'done'"
  allergies = gets.chomp

  while allergies != "sunshine"
    puts "Name another allergy or type 'done' if you don't have any other ones"
    allergies = gets.chomp
    break if allergies == "done"
  end

  current_year = 2016
  vampire = ""
  if allergies != 'sunshine'

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

  else
    vampire = "Probably a vampire"
  end

  puts "#{name} is: #{vampire}"

  processing_counter += 1

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends!!"

