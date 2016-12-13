# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".insert(1,"o")
# => “zoom”

p "enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

p "the usual".concat(" suspects")
#=> "the usual suspects"

p " suspects".insert(0, "the usual")
# => "the usual suspects"

p "The case of the disappearing last letter".chomp("r")
p "The case of the disappearing last letter".replace("The case of the disappearing last lette")
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
p "The mystery of the missing first letter".replace("he mystery of the missing first letter")
p "The mystery of the missing first letter".delete("T")
# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".replace("Elementary, my dear Watson!")
p "Elementary,    my   dear        Watson!".squeeze(" ")

# => "Elementary, my dear Watson!"

p "z".replace("122")
p "z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z?)

p "How many times does the letter 'a' appear in this string?".count("a")
# => 4