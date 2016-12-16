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

vowel.each do |change|
  p change.index
end


name_array2 = name.chars




Scratchpad:

while char_name[name_index] != consonant[con_index]
    con_index += 1
  end
  if consonant[con_index] == "z"
  name[name_index] = "b"
  else
    name[name_index] = consonant[con_index +1]
  end

  def change_vowel(char_name)
  vowel = "aeiou"
  vowel = vowel.chars

  name_index = 0
  while name_index < char_name.length
    vowel_index = 0
    while char_name[name_index] != vowel[vowel_index]
      vowel_index += 1
    end
    if vowel[vowel_index] == "u"
      name[name_index] = "a"
    else
      name[name_index] = vowel[vowel_index +1]
    end
  name_index += 1
  end
end

p array_name = name.downcase.chars

p change_vowel("felicia")



=begin
  con_index = 0

  while char_name[name_index] != consonant[con_index]
    con_index += 1
  end
  if consonant[con_index] == "z"
  name[name_index] = "b"
  else
    name[name_index] = consonant[con_index +1]
  end

  name_index += 1
end


consonant = "abcdefghijklmnopqrstuvwxyz"
p consonant = consonant.chars
p consonant = consonant - vowel



p char_name.length

=end
