class Santa
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy Holidays!!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a great #{cookie} cookie!!"
  end

  def about
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Age: #{@age}"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end
  
  # getter methods to make attributes readable
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  # setter method to make attribute gender writable
  def gender=(new_gender)
    @gender = new_gender
  end

end

# Release 1:
# Create an empty array to add Santa instances to it:
santas = []

# create gender and ethnicity arrays to build santas with:
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# Example 1:
# puts "Iterating through gender and ethnicity lists to create santas..."
# gender.length.times do |i|
#   santas << Santa.new(gender[i], ethnicity[i])
# end

# # # Example 2:
# # count = 0
# # until gender.length <= count
# #   santas << Santa.new( gender[rand(gender.length)], ethnicity[rand(ethnicity.length)] )
# #   count += 1
# # end

# santas.each do |santa|
#   puts "New santa Info:__________________"
#   santa.about
#   santa.speak
#   santa
# end


# Driver code for Release 2:
santa = Santa.new("agender", "Latino")

p santa
santa.about
santa.celebrate_birthday
santa.get_mad_at("Dasher")
santa.gender = "gender fluid"
santa.about



