# write your own method that takes a block. Your method should print out a status message before
#and after running the block. Your block doesn't have to do anything fancy --
#it can just print out several of its own parameters.
=begin
def hello
  puts "This is the before status message"
  yield("Yoshi", "Freddie")
  def after_message
    yield
  end
end

hello {|name1, name2| puts "This prints your name, which is #{name1} or #{name2}"}

after_message {puts "This is the after status message"}


#declare an array and a hash, and populate each of them with some data. We don't care what data you use,
#but it shouldn't be nonsense data -- it should represent a reasonable scenario i
#n which those data structures would be used.
#(A hash full of random letters and numbers, for instance, is not as meaningful as a hash
#that associates Hollywood actors with their best-known character.)

Character = ["William Wallace", "John McClane", "Robin Hood"]
Actor = {
  mel_gibson: "William Wallace",
  bruce_willis: "John McClean",
  kevin_costner: "Robin Hood",
}


#Demonstrate that you can iterate through each one using .each,
#and then using .map! (modifying the data in some way).
#Note that you can't call .map! on a hash, so you can skip that
#(.map returns an array, so a destructive map method is logically impossible on a hash).
#Print the data structures before and after each call to demonstrate whether they have been modified or not.


#1) Iterate through .each
Character.each {|fictional| puts "His best performance was while playing #{fictional}."}

Actor.each {|person, fictional| puts "#{person}'s best performance was while playing #{fictional}."}


#2) Iterate using .map!
puts "Original characters: "
p Character

puts "Replace characters for: "
Character.map! do |fictional_char|
  puts fictional_char
  fictional_char = gets.chomp
end

puts "New best characters: "
p Character
=end

#Release 2- Array
#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
del_cond = [2, 4, 6, 8, 10]

del_cond.delete_if { |numbers| numbers < 5 }

p del_cond

#A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
delete_cond = [2, 4, 6, 8, 10]
delete_cond.keep_if { |numbers| numbers < 5 }
#delete_cond.delete_if { |numbers| numbers >= 5 }

p delete_cond

#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

condition_array = [1, 2, 3, 4, 5]

condition_array.select! { |number| number.even? }
p condition_array

#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).
letter_array = ["a", "b", "c", "d", "e"]


letter_array.cycle(2) { |x| puts x.upcase }
#when
p letter_array




#Release 2- Hashes
#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
letters = { "a" => 1,"e" => 2,"i" => 3,"o" =>4, "u" =>5, "y" => 6}

letters.delete_if { |vow, num| vow < "u" }
p letters

#A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
let_num = { "a" => 1,"e" => 2,"i" => 3,"o" => 4, "u" => 5, "y" => 6}

let_num.keep_if { |vow, num| vow < "u" }
p let_num

#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
letter_numbers = { "a" => 1,"e" => 2,"i" => 3,"o" => 4, "u" => 5, "y" => 6}

letter_numbers.select! {|vow, num| num.even? }
p letter_numbers
#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).


letter_array2 = ["a", "b", "c", "d", "e"]

letter_array2.each do |select|
  p select.clear
end





