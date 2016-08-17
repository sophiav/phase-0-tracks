class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    puts "Whoof!" * integer
  end

  def roll_over
    puts "*roll over*"
  end

  def dog_years(integer)
    puts dog_age = integer * 7
    dog_age
  end

  def swim
    puts "*Splash!!*"
  end

  def initialize
    puts "Initializing a new puppy instance ..."
  end

end


# Add driver code to test instance methods for class Puppy:
# storm = Puppy.new
# storm.fetch("ball")
# storm.speak(3)
# storm.roll_over
# storm.dog_years(2)
# storm.swim











