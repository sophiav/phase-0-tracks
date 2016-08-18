=begin
Design class Pokemon:

Attributes (state)
  - Name: varies
  - Weight: varies
  - Height: varies
  - Type: varies
  - Location: fixed


Behaviors
  - Evolve
  - Fight: takes argument power
  - Heal: takes argument integer
  - About
  
=end

# Create class Pokemon
class Pokemon
  attr_reader :type
  attr_accessor :name, :location, :weight, :height
  def initialize(name, location, type)
    @name = name
    @weight = 1.5
    @height = 1
    @type = type
    @location = location
  end 

  def evolve
    puts "#{@name} has evolved!!!"
  end 

  def fight(power)
    puts "#{@name} used: #{power}" 
  end

  def heal(integer_points)
    puts "#{@name}'s health restored by #{integer_points} points"
  end 

  def about
    puts "Name: #{@name}"
    puts "Type: #{@type}"
    puts "Weight: #{@weight} kgs"
    puts "Height: #{@height} meters"
    puts "Location: #{@location}"
  end

end
