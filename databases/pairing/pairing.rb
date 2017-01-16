# Let's make pairing better

# user enters name, lesson, day available, time available


# matches users by lesson, day available and time available

# in future iterations I will:
# convert all times to PST (EST - 3, CST - 2, MST - 1)
# track how many times users have been matched

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("pairing.db")
db.results_as_hash = true

# create a table to store pairing data
create_pairing_table = <<-SQL
  CREATE TABLE IF NOT EXISTS pairing(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    lesson REAL,
    day VARCHAR(255),
    time INT
  )
SQL

db.execute(create_pairing_table)

# test data input into pairing
#db.execute( <<-SQL
 # INSERT INTO pairing (name, lesson, day, time) VALUES ("Jamie", 8.2, "Thursday", time('08:30'));
#  SQL
 # )

def create_pairing(db, name, lesson, day, time)
  db.execute("INSERT INTO pairing (name, lesson, day, time) VALUES (?, ?, ?, time(?));", [name, lesson, day, time])
end

create_pairing(db, "Jamie", 8.2, "Thursday", '08:30')

create_pairing(db, "Carlina", 8.2, "Tuesday", '10:30')

create_pairing(db, "Yoshi", 8.4, "Wednesday", '12:00')

create_pairing(db, "Freddie", 8.4, "Monday", '14:15')

create_pairing(db, "Khloe", 8.2, "Tuesday", '10:30')


puts "What lesson are you working on? (8.2 or 8.4)"
lesson = gets.chomp!.to_f
puts "What day would you like to pair?"
day = gets.chomp!
puts "What time would you like to pair? (enter 24 hour time):"
time = gets.chomp!.to_i

pairs = db.execute("SELECT * FROM pairing")

pair = false
pairs.each do |match|
  if lesson == match["lesson"] && day == match["day"] && time = match["time"]
    puts "Your match is #{match["name"]}"
  else pair = true
  end
end

if pair == true
  puts "Sorry, no match!"
end

