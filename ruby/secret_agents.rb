

# advance each letter by one letter in the index using .next
# make exception for z - z-->a

def encrypt(str)
  index = 0
  while index < str.length
    if str[index] == "z"
      str[index]="a"
    else
      str[index]=str[index].next
    end
    index += 1
  end
  p str
end

#create variable for reverse alphabet. run while loop to ID letters in word as indexes in the reverse alphabet and use alphanum+1 to advance to next letter in reverse alphabet string. Identify exception = a-->z.

def decrypt(str2)
  alpha = "abcdefghijklmnopqrstuvwxyz"
  alpha = alpha.reverse!
  index2 = 0
  while index2 < str2.length
    alphanum = 0
    while str2[index2] != alpha[alphanum]
        alphanum += 1
    end
    if alpha[alphanum] == "a"
      str2[index2]= "z"
    else
      str2[index2]= alpha[alphanum +1]
    end
    index2 += 1
  end
  p str2
end

decrypt(encrypt("swordfish"))


# This nested method works because the encrypt method moves each letter forward one letter in the alphabet and then the decrypt method moves each letter back to its original place.

#DRIVER CODE

#Asks a secret agent (the user) whether they would like to decrypt or encrypt a password
input = 0
until input == "e" || input == "d" || input == "E" || input == "encrypt" || input == "Encrypt" || input == "ENCRYPT" || input == "D" || input == "decrypt" || input == "Decrypt" || input == "DECRYPT"
  puts "Would you like to encrypt or decrypt a password? (e/d)"
  input=gets.chomp
end

#Asks them for the password
puts "Please enter your password: "
password=gets.downcase.chomp


#Conducts the requested operation, prints the result to the screen, and exits

if input == "e" || input == "E" || input == "encrypt" || input == "Encrypt" || input == "ENCRYPT"
  str = password
  encrypt(str)
  puts str
else
  str2 = password
  decrypt(str2)
  puts str2
end
"Bye!"
exit
