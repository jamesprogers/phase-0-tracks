#pseudocode and write a program that will allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).

#Prompt the designer/user for all of this information.
#Convert any user input to the appropriate data type.

puts "Please enter client's name: "
name = gets.chomp

  puts "Please enter client's age: "
age = gets.chomp.to_i

  puts "Please enter the client's number of children: "
children= gets.chomp.to_i

  puts "Please select a decor theme: "
decor= gets.chomp

  puts "Please enter whether the client likes deviled eggs (y/n): "
eggs= gets.chomp
entries = {
  name: name,
  age: age,
  children: children,
  decor: decor,
  eggs: eggs,
}

#Print the hash back out to the screen when the designer has answered all of the questions.
p entries

loop do
  puts "Enter the category of any errors (enter 'none' if no errors)"
  error = gets.chomp
  break if error == "none"
  puts "What error is in the #{error} category?"
    revision = gets.chomp
    entries[error] << revision
end
p entries



#Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
#Print the latest version of the hash, and exit the program. =end