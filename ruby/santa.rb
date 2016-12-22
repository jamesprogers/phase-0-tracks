#create a Santa class

class Santa
  #Release 3:
  attr_reader :age
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
    puts "This santa idenifies as #{@gender} and #{@ethnicity}"
  end

  #Create a speak method that will print "Ho, ho, ho! Haaaappy holidays!" (Santa has been working on being more inclusive.)
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  #Create n eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!"

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  #Release 2: celebrate_birthday should age Santa by one year
  def celebrate_birthday
    @age += 1
    puts "Santa's Age: #{@age}"
  end

  # Release 2: get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings. Rotate the array until the name.last is true, then print the array
  def get_mat_at(bad_name)
    new_ranking = @reindeer_ranking.rotate(@reindeer_ranking.index(bad_name)+1)
    puts "The new ranking is #{new_ranking}."
    puts "#{new_ranking.last} is the worst!"
  end

end

elf = Santa.new("male", "elfish")
elf.speak
elf.eat_milk_and_cookies("Gingerbread")
elf.about

#Release 1:
#Add some diverse initializations to your file as driver code, then test your work by running the program from the command line

test_santas = []
test_santas << Santa.new("agender", "black")
test_santas << Santa.new("female", "Latino")

test_santas.each do |test|
  test.about
end

santas = []
genders = ["male", "uber-male", "female", "unclear", "free-spirited"]
ethnicities = ["aardvarkish", "neophytes", "Belgians", "purple-people", "clever"]

genders.length.times do |santa_input|
  santas << Santa.new(genders[santa_input], ethnicities[santa_input])
end

santas.each do |santa_output|
  santa_output.about
end

#Release 2:
elf.celebrate_birthday
elf.get_mat_at("Vixen")
elf.gender= "Unlike anything else"
elf.about
puts "#{elf.age} is this Santa's age and they are a proud #{elf.ethnicity}"

#Release 4:
#Use our array of example genders and an array of example ethnicities (and feel free to add to it if you like -- each array could have a lot more options in it!) to create your Santas with a randomly selected gender and a randomly selected ethnicity. (How do you randomly select an array item? The Array documentation should be able to help you out there!)
Set your new Santa's age to a random number between 0 and 140.
No need to store your Santas in a data structure, but your program should print out the attributes of each Santa using the instance methods that give you access to that data.



