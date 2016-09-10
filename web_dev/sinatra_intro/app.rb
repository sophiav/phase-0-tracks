# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student
# get '/students/:id' do
#   student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
#   student.to_s
# end


# Release 0:
# 1. write a GET route that displays an address
get '/contact/:address' do
  address = params[:address]
  "The address is #{params[:address]}"
end

# 2. write a GET route that can take a name as a query param and print a message! 
get '/great_job/' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# 3. write a GET route that uses route params to add 2 numbers and respond with the result
get '/:num_1/add/:num_2' do
  number_1 = (params[:num_1]).to_i
  number_2 = (params[:num_2]).to_i
  result = number_1 + number_2
  "#{params[:num_1]} + #{params[:num_2]} = #{result}"
  # result.to_i
end

# 4. write a GET route that uses route params to filter the database based on campus choice
get '/students/:campus' do
  campus = params[:campus]
  students = db.execute("SELECT * FROM students WHERE campus=?", [campus])
  count = students.count.to_s
  "There are #{count} students in the #{campus} campus"
end













