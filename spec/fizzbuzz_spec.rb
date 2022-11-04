require 'fizzbuzz3'
describe "fizzbuzz" do

  it 'returns "fizz" when passed 3' do
    expect(fizzbuzz(3)).to eq "fizz"  
  end

  it 'returns "buzz" when passed 5' do
    expect(fizzbuzz(5)).to eq "buzz"  
  end

  it 'returns "fizzbuzz" when passed 3 and 5' do
    expect(fizzbuzz(15)).to eq "fizzbuzz"  
  end

  it 'returns "fizz" when passed a multiple of 3' do
    inputs = [6,9,12]
    result = inputs.map { |x| fizzbuzz(x)}
    expect(result).to eq ["fizz", "fizz","fizz"]  
  end

  it 'returns "buzz" when passed a multiple of 5' do
    inputs = [5,10,20]
    result = inputs.map { |x| fizzbuzz(x)}
    expect(result).to eq ["buzz", "buzz","buzz"]  
  end
  
  it 'returns "fizzbuzz" when passed a multiple of 3 and 5' do
    inputs = [15,30,45]
    result = inputs.map { |x| fizzbuzz(x)}
    expect(result).to eq ["fizzbuzz", "fizzbuzz","fizzbuzz"]  
  end

  it "returns number when number is neither divisible by 3 or 5" do
    inputs = [2,4,8]
    result = inputs.map { |x| fizzbuzz(x)}
    expect(result).to eq [2,4,8]  
  end

  it "returns error when the input is not an integer - string" do
    expect { fizzbuzz("buzz") }. to raise_error("not an integer")
  end

  it "returns error when the input is not an integer - array" do
    expect { fizzbuzz(["buzz"]) }. to raise_error("not an integer")
  end

  it "returns error when the input is not an integer - nil" do
    expect { fizzbuzz(nil) }. to raise_error("not an integer")
  end
end