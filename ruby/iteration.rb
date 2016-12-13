# write your own method that takes a block. Your method should print out a status message before and after running the block. Your block doesn't have to do anything fancy -- it can just print out several of its own parameters.

def hello
  puts "This is the before status message"
  yield("Yoshi", "Freddie")
  def after_message
    yield
  end
end

hello {|name1, name2| puts "This prints your name, which is #{name1} or #{name2}"}

after_message {puts "This is the after status message"}


#declare an array and a hash, and populate each of them with some data. We don't care what data you use, but it shouldn't be nonsense data -- it should represent a reasonable scenario in which those data structures would be used. (A hash full of random letters and numbers, for instance, is not as meaningful as a hash that associates Hollywood actors with their best-known character.)

Character = ["William Wallace", "John McClean", "Robin Hood"]
Actor = {
  mel_gibson: "William Wallace",
  bruce_willis: "John McClean",
  kevin_costner: "Robin Hood",
}


#Demonstrate that you can iterate through each one using .each, and then using .map! (modifying the data in some way). Note that you can't call .map! on a hash, so you can skip that (.map returns an array, so a destructive map method is logically impossible on a hash). Print the data structures before and after each call to demonstrate whether they have been modified or not

Character.each {|fictional| puts "His best performance was while playing #{fictional}"}

Actor.each {|person, fictional| puts "#{person}'s best performance was while playing #{fictional}"}

Character.map! do |new_movie|
  puts Character
  Character.replace("Martin Riggs")
end