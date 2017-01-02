
require_relative 'word_game'

describe Word_Game do
  let(:test_game2) { Word_Game.new }

  it "enters a word" do
    expect(test_game2.generate("got").to eq ("got")
  end


end
