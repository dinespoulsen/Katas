require "fizzbuzz"

describe "fizzbuzz" do
  it "should test for divisibility by 3" do
    expect(divisible_by_3?(3)).to eq true
  end

  it "should test for indivisibility by 3" do
    expect(divisible_by_3?(4)).to eq false
  end

  it "should test for divisibility by 5" do
    expect(divisible_by_5?(5)).to eq true
  end

  it "should test for indivisibility by 5" do
    expect(divisible_by_5?(6)).to eq false
  end

  it "should test for divisibility by 3 and 5" do
    expect(divisible_by_3_and_5?(15)).to eq true
  end

  it "should return fizz when multiple of 3" do
    expect(fizzbuzz(3)).to eq("fizz")
  end

  it "should return buzz when multiple of 5" do
    expect(fizzbuzz(5)).to eq("buzz")
  end

  it "should return fizzbuzz when multiple of 3 and 5" do
    expect(fizzbuzz(15)).to eq("fizzbuzz")
  end

  it "should return the number if not multiple of 3 or 5" do
    expect(fizzbuzz(7)).to eq(7)
  end

  it "should return 0 if number is 0" do
    expect(fizzbuzz(0)).to eq(0)
  end
end
