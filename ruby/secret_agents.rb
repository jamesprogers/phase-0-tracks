

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




=begin A decrypt method that reverses the process above. Note that Ruby doesn't have a built-in method for going backward one letter. How can you find out where a letter is in the alphabet, then access the letter right before it? Hint: In the IRB session above, you learned how to ask a string for the index of a letter."abcdefghijklmnopqrstuvwxyz" counts as a string.
=end

def decrypt(str)
  alpha = "abcdefghijklmnopqrstuvwxyz"
  alpha = alpha.reverse!
  p alpha
  index = 0
  while index < str.length
    alphanum = 0
    while str[index] != alpha[alphanum]
        alphanum += 1
    end
    if alpha[alphanum] == "a"
      puts "z"
    else
      puts alpha[alphanum +1]
    end
    index += 1
  end
end

decrypt("abxwcslkc")
