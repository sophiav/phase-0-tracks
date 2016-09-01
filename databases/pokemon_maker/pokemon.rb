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
    weight INT,
    height INT
  )
SQL

# create a pokemons table (if it's not there already)
db.execute(create_table_cmd)