#write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name with it by doing the following:

name = "Felicia Torres"

#Swapping the first and last name.

p name_array = name.split(" ")
p rev_name_array = name_array.reverse

#Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

#create vowel array
vowel = "aeiou"
p vowel = vowel.chars

#create method of changing vowel

p vowel[0]
p vowel[1+1]
p vowel[vowel.index("a")+1]

def change_vowel(char_name)
  while name_index < char_name.length
    vowel_index = 0
    while char_name[name_index] != vowel[vowel_index]
      vowel_index += 1
    end
    if vowel[vowel_index] == "u"
      char_name[name_index] = "a"
    else
      char_name[name_index] = vowel[vowel_index +1]
    end
  name_index += 1
  end
end

name_array2 = name.chars

#create consonant array

consonant = "abcdefghijklmnopqrstuvwxyz"
p consonant = consonant.chars
p consonant = consonant - vowel

#create method for changing consonants

def con_change(char_name2)
con_index = 0
  while char_name2[name_index2] != consonant[con_index]
    con_index += 1
  end
  if consonant[con_index] == "z"
  char_name2[name_index2] = "b"
  else
    char_name2[name_index2] = consonant[con_index +1]
  end
  name_index2 += 1
end

p array_name = name.downcase.chars

p change_vowel("felicia")


p char_name.length

=end
