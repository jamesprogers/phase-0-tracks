
require_relative 'word_game'

describe Word_Game do
  let(:test_game2) { Word_Game.new }

  it "generates an array" do
    test_game2.word = "got"
    expect(test_game2.arr_generator). to eq (["g","o","t"])
  end

  it "generates the hidden word" do
    test_game2.word = "got"
    expect(test_game2.hidden_word). to eq ("___")
  end

  it "generates the counter" do
    test_game2.word = "got"
    expect(test_game2.counter_generator). to eq (6)
  end

  it "counts up" do
    expect(test_game2.counter_up). to eq (1)
  end

  it "generates an array from the guess" do
    test_game2.letter= "g"
    expect(test_game2.guess_arr). to eq (["g"])
  end

  it "places letters" do
    test_game2.word = "got"
    test_game2.arr_generator
    test_game2.hidden_word
    test_game2.letter= "g"
    test_game2.guess_arr
    expect(test_game2.letter_place). to eq ({0=>"g"})
  end

  it "checks for duplicate letter usage" do
    test_game2.word = "got"
    test_game2.arr_generator
    test_game2.hidden_word
    test_game2.letter= "g"
    test_game2.guess_arr
    test_game2.letter_place
    test_game2.counter_up
    test_game2.letter= "g"
    test_game2.guess_arr
    test_game2.letter_place
    test_game2.counter_up
    expect(test_game2.rewind_check). to eq (1)
  end


  it "generates final array" do
    test_game2.word = "got"
    test_game2.arr_generator
    test_game2.hidden_word
    test_game2.letter= "g"
    test_game2.guess_arr
    test_game2.letter_place
    test_game2.letter= "o"
    test_game2.guess_arr
    test_game2.letter_place
    test_game2.letter= "t"
    test_game2.guess_arr
    test_game2.letter_place
    expect(test_game2.hash_converter). to eq (["g","o","t"])
  end

  it "generates final word" do
    test_game2.word = "got"
    test_game2.arr_generator
    test_game2.hidden_word
    test_game2.letter= "g"
    test_game2.guess_arr
    test_game2.letter_place
    test_game2.letter= "o"
    test_game2.guess_arr
    test_game2.letter_place
    test_game2.letter= "t"
    test_game2.guess_arr
    test_game2.letter_place
    test_game2.hash_converter
    expect(test_game2.new_word). to eq ("got")
  end

  it "congratulates winner" do
    test_game2.word = "got"
    test_game2.arr_generator
    test_game2.hidden_word
    test_game2.letter= "g"
    test_game2.guess_arr
    test_game2.letter_place
    test_game2.counter_up
    test_game2.letter= "o"
    test_game2.guess_arr
    test_game2.letter_place
    test_game2.counter_up
    test_game2.letter= "t"
    test_game2.guess_arr
    test_game2.letter_place
    test_game2.counter_up
    test_game2.hash_converter
    test_game2.new_word
    expect(test_game2.game_status). to eq ("Contratulations! You won!")
  end


end
