require "fizzbuzz"

describe "fizzbuzz" do

it "should test for divisibility by 3" do
  expect(divisible_by_3?(3)).to eq true
end

it "should test for indivisibility by 3" do
  expect(divisible_by_3?(4)).to eq false
end

it "should test for indivisibility by 5" do
  expect(divisible_by_5?(5)).to eq true
end

it "should test for indivisibility by 5" do
  expect(divisible_by_5?(7)).to eq false
end

it "should test for divisibility by 3 and 5" do
  expect(divisible_by_3_and_5?(15)).to eq true
end

it "should test for indivisibility by 3 and 5" do
  expect(divisible_by_3_and_5?(16)).to eq false
end

it "should return fizz if divisble by 3" do
  expect(fizzbuzz(3)).to eq("fizz")
end

it "should return buzz if divisible by 5" do
  expect(fizzbuzz(5)).to eq("buzz")
end

it "should return fizzbuzz if divisible by 3 and 5" do
  expect(fizzbuzz(15)).to eq("fizzbuzz")
end

it "should return number if number is not divisble by 3 or 5" do
  expect(fizzbuzz(16)).to eq(16)
end

it "should return 0 if number is 0" do
  expect(fizzbuzz(0)).to eq(0)
end

end
