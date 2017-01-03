#Using plain old English in a text file or other scratch pad, pseudocode a class for a word-guessing game that meets the following specifications. Assume your driver code will handle input and output as far as the user is concerned. In other words, write a class designed for a computer program to use, not one designed for a human to use directly, then use driver code to bridge the gap between human and Ruby object.

#One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
#Guesses are limited, and the number of guesses available is related to the length of the word.
#Repeated guesses do not count against the user.
#The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
#The user should get a congratulatory message if they win, and a taunting message if they lose.

#pseudocode for word_game
#1) User1 enters a word
#2) User2 attempts to guess the word by guessing letters contained in the word. Each time the user guesses, a counter will increase by 1, starting at 0. The number of times User2 can guess is equal to the number of characters in the word.
#3) Repetition of guesses will not count advance the number of the counter.
#4) Each time User2 enters a letter that exists in the word, that letter will be displayed in the word in the place it exists in the word.
#5) When User2 guesses all the letters in the word, User2 receives a congratulatory message. When User2 uses all of their attempts, User2 receives a taunting message.

class Word_Game
  attr_accessor :word
  attr_accessor :letter
  attr_reader :counter
  attr_reader :new_word

  def initialize
    @word = word
    @word_arr = []
    @letter = letter
    @letter_arr = []
    @hidden_word = 0
    @new_word = 0
    @new_arr = []
    @counter = 0
    @total_count = 0
    @new_hash = {}
    @final_arr = []
    @all_letters = []
  end

  def arr_generator
    @word_arr = @word.chars
  end

  def hidden_word
    @hidden_word = "_" * @word.length
    return @hidden_word
  end

  def guess_arr
    @letter_arr = letter.chars
  end

  def letter_place
    word_index = 0
    while word_index < @word.length
      if @letter == @word_arr[word_index]
        @new_hash[word_index] = @letter
      end
      word_index += 1
    end
    @all_letters << @letter
    return @new_hash
  end

  def counter_generator
    @total_count = 2 * @word.length
    return @total_count
  end

  def counter_up
    @counter += 1
  end

  def hash_converter
    inter_hash = []
    word_index = 0
    while word_index < @word.length
      inter_hash << @new_hash.fetch(word_index, "_")
      word_index += 1
    end
    @final_arr.replace(inter_hash)
    return @final_arr
  end

  def new_word
    @new_word = @final_arr.join
  end

  def print_new_word
    "the word is: #{@new_word}."
  end

  def rewind_check
    word_index = 0
    while word_index < @all_letters.length
      if @letter == @all_letters[word_index]
        @counter = @counter-1
        break
      end
      word_index += 1
    end
    return @counter
  end

  def game_status
    if @new_word == @word
      @counter = @total_count
      "Contratulations! You won!"
    elsif @counter < @total_count
      "You have #{@total_count-@counter} attempts left. Keep trying"
    else "Sorry. You ran out of attempts."
    end
  end

end



puts "Time to play the Word Game!"
test_game = Word_Game.new

puts "User 1, please enter a word:"
test_game.word= gets.chomp
puts "-"*10000
test_game.arr_generator
test_game.hidden_word
test_game.counter_generator
puts "User 2, it's time to play the game! The word is #{test_game.hidden_word}."
puts "You have #{test_game.counter_generator} attempts. This is twice the number of characters in the word."


until test_game.counter_up > test_game.counter_generator
  puts "User 2, please enter a letter:"
  test_game.letter= gets.chomp
  test_game.guess_arr
  test_game.rewind_check
  test_game.letter_place
  test_game.hash_converter
  test_game.new_word
  puts test_game.print_new_word
  puts test_game.game_status
end









