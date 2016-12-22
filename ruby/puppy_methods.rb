class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    "Woof "* n
  end

  def roll_over
    "rolls over"
  end

  def dog_years(age)
    dog_age = age*7
    "The dog is #{dog_age} in dog years"
  end

  def nap(hr)
    "The dog slept for #{hr} hours"
  end

end

fido=Puppy.new
puts fido.fetch("ball")
puts fido.speak(2)
puts fido.roll_over
puts fido.dog_years(2)
puts fido.nap(10)

class DBC_Locations
  def initialize
    puts "Initializing new DBC Location instance ..."
  end

  def city_validator(city)
    dbc_cities = ["New York", "Chicago", "Austin", "San Diego", "San Francisco", "Seattle"]
    if dbc_cities.include?(city)
      puts "This is a DBC city"
    end
  end

  def student_num(num)
    "This location has #{num} students"
  end

end

New_York = DBC_Locations.new
puts New_York.city_validator("New York")
puts New_York.student_num(24)

#loop 50x
arr = []
50.times do  |create_location|
  arr << create_location=DBC_Locations.new
end

arr.each do |tester|
  puts tester.city_validator("San Diego")
  puts tester.student_num(19)
end




