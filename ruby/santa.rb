class Santa
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
  end

  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  @age = 0

  def speak
    puts "Ho, ho, ho! Haaaappy Holidays!!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!!"
  end

end

# jeff = Santa.new
# jeff.speak
# jeff.eat_milk_and_cookies("blueberry-yogurt")

