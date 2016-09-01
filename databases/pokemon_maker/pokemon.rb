# CREATE A POKEMON List 
# use relational data in a ruby program

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("pokemon.db")