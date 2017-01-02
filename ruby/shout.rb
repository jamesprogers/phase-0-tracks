
#Comment out the old code in shout.rb, and make a mixin version of the Shout module instead.
#Write two classes representing anything that might shout, and include the Shout module in those classes.
#Test your work by adding driver code at the bottom of the file that instantiates instances of your classes and calls the two module methods on each instance.

=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(words)
    words + " Huzzah! :)"
  end
end
p Shout.yelling_happily("Dinner")
p Shout.yell_angrily("No dinner")
=end

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yelling_happily(words)
    words + " Huzzah! :)"
  end
end

class Angry
  include Shout
end

class Happy
  include Shout
end


angry = Angry.new
puts angry.yell_angrily("No dinner")

happy = Happy.new
puts happy.yelling_happily("Dinner")








