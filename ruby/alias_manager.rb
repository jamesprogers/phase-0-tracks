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
p "end"

def change_vowel(char_name)
  char_name = char_name.chars
  new_array = []
  vowel = "aeiou"
  vowel = vowel.chars
  char_name.each do |char_search|
    vowel_index = 0
    while vowel_index < vowel.length
      if vowel[vowel_index] == char_search
        if vowel[vowel_index] == "u"
          new_array << "a"
        else new_array << vowel[vowel_index+1]
        end
      else vowel_index += 1
      end
      new_array << char_search
    end
  end
  p new_array
end

change_vowel("ewi")

#I've been struggling with this for several days. I'm going to submit it as is to make the deadline and continue working on it this week.

