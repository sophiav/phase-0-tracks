# GOALS:
# 1. CREATE, RETRIEVE AND MANIPULATE A POKEMON LIST 
# 2. USE RELATIONAL DATA IN A RUBY PROGRAM

# require gems
require 'sqlite3'
require 'faker'

# create a Pokedex Class
class Pokedex
  def initialize
    # create SQLite database
    @db = SQLite3::Database.new("pokemon.db")
    # change the data structure type of each new instance the SQLite gem creates
    # when we call .new on the Database class (change from array to a hash)
    @db.results_as_hash = true

    create_table
  end

  def create_table
    # create a pokedex table command
    create_table_cmd = <<-SQL
      CREATE TABLE IF NOT EXISTS pokedex(
        id INTEGER PRIMARY KEY,
        name VARCHAR(255),
        location VARCHAR(255),
        cp INT,
        evolve BOOLEAN
      )
    SQL
  
    # create a pokedex table (if it's not already there)
    @db.execute(create_table_cmd)

    # since we are running this program multiple times, if the table is already there,
    # then clear all the values inside it so was can start fresh with no data
    @db.execute('DELETE from pokedex');
  end

  # add pokemon to the pokedex
  def create_pokemons(name, location, cp, evolve)
    @db.execute("INSERT INTO pokedex (name, location, cp, evolve) VALUES (?, ?, ?, ?)", [name, location, cp, evolve])
  end

  # add methods to include some behavior characteristics
  def evolve(pokemon_name)
    @db.execute("UPDATE pokedex SET evolve='true' WHERE name='#{pokemon_name}'")
    puts "#{pokemon_name} has evolved!"
  end

  def power_up(pokemon_name)
    cp = @db.get_first_value("SELECT cp FROM pokedex WHERE name='#{pokemon_name}'")
    cp += 20

    @db.execute("UPDATE pokedex SET cp='#{cp}' WHERE name='#{pokemon_name}'")
    puts "#{pokemon_name}'s CP increased by 20 points"
  end

  def transfer(pokemon_name)
    @db.execute("DELETE FROM pokedex WHERE name='#{pokemon_name}'")
    puts "#{pokemon_name} was transfered to the professor"
  end

  # print pokedex information in a nice format 
    # select all the pokemon from the pokedex table
    # loop through the pokemon array
    # and for each pokemon we print its info
  def print_pokedex
    pokedex = @db.execute("SELECT * FROM pokedex")

    puts "_" * 50
    puts "Name, Location, CP, Evolve" # print heading for the table
    pokedex.each do |pokemon|
      puts "#{pokemon['name']}, #{pokemon['location']}, #{pokemon['cp']}, #{pokemon['evolve']}"
    end
    
    puts "_" * 50
  end
end

# Include Driver Code
pokedex = Pokedex.new

# create 20 pokemons for the pokedex
20.times do
  name = Faker::Pokemon.name
  location = Faker::Pokemon.location
  cp = Faker::Number.number(3)
  evolve = 'false'

  pokedex.create_pokemons(name, location, cp, evolve)
end

# Provide a User Interface so the player can interact with the pokemons