# our calculator should ...
# add two integers and return an integer
# subtract two integers and return an integer
# multiply two integers and return an integer

# RSpec
# 'describe' block for each group of tests
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'calculator'

describe Calculator do
  let(:ccalculator) { Calculator.new }

  it "adds two integers" do
    expect(ccalculator.add(3,4)).to eq 7
  end

  it "subtracts two integers" do
    expect(ccalculator.subtract(7,1)).to eq 6
  end

  it "multiplies two integers" do
    expect(ccalculator.multiply(2,3)).to eq 6
  end

  it "divides two integers" do
    expect(ccalculator.divide(8,2)).to eq 4
  end

end