

# advance each letter by one letter in the index using .next
# exclude 0

def encrypt(str)
  index = 0
  while index < str.length
    if str[index] == "z"
      puts "a"
    else
      puts str[index].next
    end
    index += 1
  end
end

encrypt("abc")




# A decrypt method that reverses the process above. Note that Ruby doesn't have a built-in method for going backward one letter. How can you find out where a letter is in the alphabet, then access the letter right before it? Hint: In the IRB session above, you learned how to ask a string for the index of a letter."abcdefghijklmnopqrstuvwxyz" counts as a string.


def decrypt(str)
  alpha = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < str.length
      if str[index] == alpha.split
        puts alpha.next.next
  end
  index += 1
end

decrypt("bcd")

if str[index] == "a"
      puts "z"
    else