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

def alias_generator(char_name)
  char_name_down = char_name.downcase
  char_name_split = char_name_down.split(" ")
  char_name_f = char_name_split[0]
  char_name_f = char_name_f.chars
  new_array_f = []
  new_char_f = 0
  vowel_f = "aeiou"
  vowel_f = vowel_f.chars
  char_name_f.each do |char_search_f|
    vowel_index_f = 0
    while vowel_index_f < vowel_f.length
      if vowel_f[vowel_index_f] == char_search_f
        if vowel_f[vowel_index_f] == "u"
          new_char_f = "a"
          break
        else new_char_f = vowel_f[vowel_index_f+1]
          break
        end
      else new_char_f = char_search_f
      end
      vowel_index_f += 1
    end
    new_array_f << new_char_f
  end
  new_array_f = new_array_f.join
  new_array_f = new_array_f.capitalize

  char_name_l = char_name_split[1]
  char_name_l = char_name_l.chars
  new_array_l = []
  new_char_l = 0
  vowel_l = "aeiou"
  vowel_l = vowel_l.chars
  char_name_l.each do |char_search_l|
  vowel_index_l = 0
    while vowel_index_l < vowel_l.length
      if vowel_l[vowel_index_l] == char_search_l
        if vowel_l[vowel_index_l] == "u"
          new_char_l = "a"
          break
        else new_char_l = vowel_l[vowel_index_l+1]
          break
        end
      else new_char_l = char_search_l
      end
      vowel_index_l += 1
    end
    new_array_l << new_char_l
  end
  new_array_l = new_array_l.join
  new_array_l = new_array_l.capitalize

  new_name = "#{new_array_f} #{new_array_l}"

  new_name = new_name.downcase
  new_name = new_name.split(" ")
  new_name_f = new_name[0]
  new_name_f = new_name_f.chars
  new_array_f2 = []
  new_char_f2 = 0
  alphabet_f = "abcdefghijklmnopqrstuvwxyz"
  alphabet_f = alphabet_f.chars
  consonant_f = alphabet_f - vowel_f
  new_name_f.each do |char_search_f2|
    con_index_f = 0
    while con_index_f < consonant_f.length
      if consonant_f[con_index_f] == char_search_f2
        if consonant_f[con_index_f] == "z"
          new_char_f2 = "b"
          break
        else new_char_f2 = consonant_f[con_index_f+1]
          break
        end
      else new_char_f2 = char_search_f2
      end
      con_index_f += 1
    end
    new_array_f2 << new_char_f2
  end
  new_array_f2 = new_array_f2.join
  new_array_f2 = new_array_f2.capitalize


  alphabet_l = "abcdefghijklmnopqrstuvwxyz"
  alphabet_l = alphabet_l.chars
  consonant_l = alphabet_l - vowel_l
  new_name_l = new_name[1]
  new_name_l = new_name_l.chars
  new_array_l2 = []
  new_char_l2 = 0
  new_name_l.each do |char_search_l2|
  con_index_l = 0
    while con_index_l < consonant_l.length
      if consonant_l[con_index_l] == char_search_l2
        if consonant_l[con_index_l] == "z"
          new_char_l2 = "b"
          break
        else new_char_l2 = consonant_l[con_index_l+1]
          break
        end
      else new_char_l2 = char_search_l2
      end
      con_index_l += 1
    end
    new_array_l2 << new_char_l2
  end
  new_array_l2 = new_array_l2.join
  new_array_l2 = new_array_l2.capitalize

  alias_name = "#{new_array_l2} #{new_array_f2}"


end

#release 0
alias_generator("Felicia Torres")
alias_generator("James Rogers")

#release 1: Provide a user interface that lets a user enter a name and get a fake name back. Let the user do this repeatedly until they decide to quit by typing 'quit'. (They might just hit Enter to continue.)
quit_array = []
loop do
  puts "Please enter a first and last name (enter 'quit' to end the program): "
  name = gets.chomp
  if name == "quit"
    puts quit_array
    break
  else
    p alias_generator(name)
    quit_array << "#{alias_generator(name)} is actually #{name}"
  end
end

#release 2: Use a data structure to store the fake names as they are entered. When the user exits the program, iterate through the data structure and print all of the data the user entered. A sentence like "Vussit Gimodoe is actually Felicia Torres" or "Felicia Torres is also known as Vussit Gimodoe" for each agent is fine.
