# CREATE A POKEMON List 
# use relational data in a ruby program

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("pokemon.db")
# change the data structure type of each new instance of the SQLite3 gem creates 
# when we call .new on the Database class (changed from array to a hash)
db.results_as_hash = true

# create a pokemons table command
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS pokedex(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    location VARCHAR(255),
    weight REAL,
    height REAL
  )
SQL

# create a pokemons table (if it's not there already)
db.execute(create_table_cmd)

# add 100 pokemons to the pokedex
def create_pokemons(db, name, location, weight, height)
  db.execute("INSERT INTO pokedex (name, location, weight, height) VALUES (?, ?, ?, ?)", [name, location, weight, height])
end

100.times do 
  name = Faker::Pokemon.name
  location = Faker::Pokemon.location
  weight = Faker::Number.between(0.1, 8.0).round(1)
  height = Faker::Number.between(0.1, 5.0).round(1)

  create_pokemons(db, name, location, weight, height)
end

# Driver code
# add a test pokemon
# db.execute("INSERT INTO pokedex (name, location, weight, height) VALUES ('Pikachu', 'Castro', 1.6, 0.7)")

# retrieve data from ORM
pokedex = db.execute("SELECT * FROM pokedex")

# puts pokedex.class
# p pokedex

# pokedex.each do |pokemon|
#   puts "#{pokemon['name']} was caught at #{pokemon['location']}"
# end
# p pokedex

