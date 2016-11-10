require "fizzbuzz"

describe "fizzbuzz" do

it "is divisible by 3" do
  expect(divisible_by_3?(3)).to eq true
end

it "is indivisible ny 3" do
  expect(divisible_by_3?(4)).to eq false
end

it "is divisible by 5" do
  expect(divisible_by_5?(5)).to eq true
end

it "is indivisible by 5" do
  expect(divisible_by_5?(7)).to eq false
end

it "is divisible by 3 and 5" do
  expect(divisible_by_3_and_5?(15)).to eq true
end

it "is indivisible by 3 and 5" do
  expect(divisible_by_3_and_5?(16)).to eq false
end

it "is returns fizz when multiple of 3" do
  expect(fizzbuzz(3)).to eq("fizz")
end

it "it return buzz when multiple of 5" do
  expect(fizzbuzz(5)).to eq("buzz")
end

end
