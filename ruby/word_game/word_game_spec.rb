
require_relative 'word_game'

describe Word_Game do
  let(:test_game2) { Word_Game.new }

  it "enters a word" do
    test_game2.word = "got"
    expect(test_game.arr_generator). to eq (["g","o","t"])
  end


end
