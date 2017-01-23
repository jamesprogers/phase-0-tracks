# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

# add a search feature

get '/search/id' do
  erb :release_1
end

get '/search/' do
  @result = db.execute("SELECT * FROM students WHERE id=?", [params['id'].to_i])[0]
  "The student's name is #{@result["name"]} and they are going to the #{@result["campus"]} campus."
end
