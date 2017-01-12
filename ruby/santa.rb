  #create a Santa class

class Santa
  #Release 3:
  attr_accessor :age
  attr_reader :ethnicity
  attr_accessor :gender

  # create instance methods

  def initialize(gender, ethnicity)
      puts "Initializing Santa instance ..."
      @gender = gender
      @ethnicity = ethnicity
      @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
      @age = 0
  end

  #print gender and ethnicity
  def about
    "This santa idenifies as #{@gender} and #{@ethnicity}"
  end

  #Create a speak method that will print "Ho, ho, ho! Haaaappy holidays!" (Santa has been working on being more inclusive.)
  def speak
    "Ho, ho, ho! Haaaappy holidays!"
  end

  #Create n eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!"

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  #Release 2: celebrate_birthday should age Santa by one year
  def celebrate_birthday
    @age += 1
    "Santa's Age: #{@age}"
  end

  # Release 2: get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings. Rotate the array until the name.last is true, then print the array
  def get_mat_at(bad_name)
    new_ranking = @reindeer_ranking.rotate(@reindeer_ranking.index(bad_name)+1)
    "The new ranking is #{new_ranking}."
    "#{new_ranking.last} is the worst!"
  end

  def age_140
    @age = rand(0..140)
    "The Santa's age is #{@age}"
  end


end

elf = Santa.new("male", "elfish")
puts elf.speak
puts elf.eat_milk_and_cookies("Gingerbread")
puts elf.about

#Release 1:
#Add some diverse initializations to your file as driver code, then test your work by running the program from the command line

test_santas = []
test_santas << Santa.new("agender", "black")
test_santas << Santa.new("female", "Latino")

test_santas.each do |test|
  puts test.about
end

santas = []
genders = ["male", "uber-male", "female", "unclear", "free-spirited", "agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["aardvarkish", "neophytes", "Belgians", "purple-people", "clever", "black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

genders.length.times do |santa_input|
  santas << Santa.new(genders[santa_input], ethnicities[santa_input])
end

santas.each do |santa_output|
  santa_output.about
end

#Release 2:
puts elf.celebrate_birthday
puts elf.get_mat_at("Vixen")
elf.gender= "Unlike anything else"
puts elf.about
puts "#{elf.age} is this Santa's age and they are a proud #{elf.ethnicity}"

#Release 4:
#create your Santas with a randomly selected gender and a randomly selected ethnicity.

#Set your new Santa's age to a random number between 0 and 140.

index = 1
loop do
  break if index == 201
  puts "Santa number #{index}"
  puts genders.shuffle.sample
  puts ethnicities.shuffle.sample
  puts elf.age_140
  index += 1
end
