# Release 1: Design class Pokemon
=begin
Attributes (state):
  - Name: varies
  - Weight: varies
  - Height: varies
  - Type: varies
  - Location: fixed

Behaviors:
  - Evolve
  - Fight: takes argument power
  - Heal: takes argument integer
  - About
=end

# Release 2: Create class Pokemon
class Pokemon
  attr_reader :type
  attr_accessor :name, :location, :weight, :height, :weight
  def initialize(name, location, type, height, weight)
    puts 'Initializing pokemon instance...'
    @name = name
    @weight = weight
    @height = height
    @type = type
    @location = location
  end 

  def evolve
    puts "You evolved #{@name}!!!"
  end 

  def fight(power)
    puts "#{@name} used: #{power}" 
  end

  def heal(integer_points=15)
    puts "#{@name}'s health restored by #{integer_points} points"
  end 

  def about
    puts "Name: #{@name}"
    puts "Type: #{@type}"
    puts "Weight: #{@weight} kgs"
    puts "Height: #{@height} m"
    puts "Location: #{@location}"
  end
end

# Driver code for Release 2:
# pokemon = Pokemon.new("Aerodactyl", "Mission", "flying", 1.7)
# p pokemon
# pokemon.evolve
# pokemon.fight("steel wing")
# pokemon.heal
# pokemon.about


# Release 3: User Interface
puts "Would you like to register a new pokemon? (yes/no)"
answer = gets.chomp

pokedex = []

while answer == "yes"
  puts "What is your pokemon's name?"
  name = gets.chomp

  puts "What was the location your pokemon was caught?"
  location = gets.chomp

  puts "What type is your pokemon (i.e. water, fire, bug, dragon etc.)?"
  type = gets.chomp

  puts "What's your pokemon's height?"
  height = gets.chomp.to_f

  puts "What's your pokemon's weight?"
  weight = gets.chomp.to_f

  pokemon = Pokemon.new(name, location, type, height, weight)
  pokedex << pokemon

  puts "Would you like to register a new pokemon? (yes/no)"
  answer = gets.chomp

  if answer == "no"
    puts "Good job! You registered the following pokemons today:"
    pokedex.each do |pokemon|
    puts "Name: #{pokemon.name}"
    puts "Location #{pokemon.location}"
    puts "Type: #{pokemon.type}"
    puts "Height: #{pokemon.height} kgs"
    puts "Weight: #{pokemon.weight}m"
    pokemon.evolve
    end
  end
end

p pokedex




































