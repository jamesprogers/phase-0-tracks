puts "How many employees will be processed?"
employees=gets.chomp.to_i

index = 0
until index == employees
  puts "What is your name?"
  name=gets.chomp

  puts "How old are you?"
  age=gets.chomp.to_i

  puts "What year were you born?"
  year=gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread.  Should we order some for you? (y/n)"
  garlic=gets.chomp

  puts "Would you like to enroll in the company’s   health insurance? (y/n)"
  health=gets.chomp

  index2=0
  until index2==1
    puts "Please enter each of your allergies individually. Please hit enter after each allergy. When finished, please type 'done':"
    allergies=gets.chomp
      if allergies=="done"
        index2=1
      elsif allergies=="sunshine"
        index2=1
      else index2=0
      end
  end

  #If the employee got their age right, and is  willing to eat garlic bread or sign up for   insurance, the result is “Probably not a vampire.”

  case
  when name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire."
  when age == (2016-year) && (garlic=="y" || health =="y")
    puts "Probably not a vampire."
  when age != (2016-year) && garlic=="n" && health==  "n"
    puts "Almost certainly a vampire."
  when age != (2016-year) && (garlic=="n" || health =="n") || allergies=="sunshine"
    puts "Probably a vampire."
  else puts "Results inconclusive."
  end

  index += 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
exit

