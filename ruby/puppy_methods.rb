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



# Create a new class with 2-3 instance methods:
class Pokemon
  def initialize
    puts "Initializing new Pokemon..."
  end

  def evolve
    puts "Evolved!!"
  end

  def heal(integer=10)
    puts "Healed by #{integer} points!!"
  end
end


counter = 0
pokedex = []

while counter < 50
  pokemon = Pokemon.new
  pokedex << pokemon
  counter += 1
end

pokedex.each do |instance|
  puts "#{instance} has: "
  pokemon.evolve
  pokemon.heal
end

p pokedex






# Add driver code to test instance methods for class Puppy:
# storm = Puppy.new
# storm.fetch("ball")
# storm.speak(3)
# storm.roll_over
# storm.dog_years(2)
# storm.swim











