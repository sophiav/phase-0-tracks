# CREATE A POKEMON List 
# use relational data in a ruby program

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("pokemon.db")

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

# Driver code
# add a test pokemon
# db.execute("INSERT INTO pokedex (name, location, weight, height) VALUES ('Pikachu', 'Castro', 1.6, 0.7)")

# retrieve data from ORM
pokedex = db.execute("SELECT * FROM pokedex")
puts pokedex.class
p pokedex