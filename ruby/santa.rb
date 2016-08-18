class Santa
  attr_reader :ethnicity
  attr_accessor :age, :gender

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
    puts "Gender: #{gender}"
    puts "Ethnicity: #{ethnicity}"
    puts "Age: #{age}"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end

end


# Create an empty array to add Santa instances to it:
santas = []

# create gender and ethnicity arrays to build santas with:
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


# Release 1:
puts "Iterating through gender and ethnicity lists to create santas..."
gender.length.times do |i|
  santas << Santa.new(gender[i], ethnicity[i])
end

# Driver Code for Release 1:
# santas.each do |santa|
#   puts "New santa Info:__________________"
#   santa.about
#   santa.speak
#   santa
# end


# Driver code for Release 2 & 3:
# santa = Santa.new("agender", "Latino")
# p santa
# santa.about
# santa.celebrate_birthday
# santa.get_mad_at("Dasher")
# santa.gender = "gender fluid"
# santa.about

# Release 4:
count = 1

until count == 1001
  puts "Creating santa number #{count}:__________________"
  santa = Santa.new( gender[rand(gender.length)], ethnicity[rand(ethnicity.length)] )
  santa.age = rand(140)
  santa.about
  count += 1
end



























