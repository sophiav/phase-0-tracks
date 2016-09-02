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
  end
  # create a pokedex table command
  # create a pokedex table (if it's not already there)
  # add pokemon to the pokedex
  # add methods to include some behavior characteristics
  # print pokedex information in a nice format
end

# Include Driver Code

# Provide a User Interface so the player can interact with the pokemons