#write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name with it by doing the following:

name = "Felicia Torres"

#Swapping the first and last name.

p name_array = name.split(" ")
p rev_name_array = name_array.reverse

#Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

#create vowel array
vowel = "aeiou"
p vowel = vowel.chars

#create method of changing vowel. Compare each letter in the code, which has been converted to an array, to each character in the vowel array and when they match, advance the character in the code by one in the vowel array. Do this once

p vowel[0]
p vowel[1+1]
p vowel[vowel.index("a")+1]


def change_vowel(array_name)
  array_name2 = []
  vowel = "aeiou"
  vowel = vowel.chars
  array_name = array_name.chars
  array_name.each do |vowel_search|
    vowel_index = 0
    while vowel_index < vowel.length
      if vowel_search == "u"
        array_name2 << "a"
      elsif vowel_search == vowel[vowel_index]
        array_name2 << vowel[vowel_index +1]
      else array_name2 << vowel_search
      end
    vowel_index += 1
    end
  end
  return array_name2
  p array_name2
end

p change_vowel("aje")

