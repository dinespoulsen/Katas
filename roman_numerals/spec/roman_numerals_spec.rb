require "roman_numerals"

describe "roman numerals" do
  it "should contain an array with tens" do
    expect(tens_array).to eq ['X', "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
  end
  it "should contain an array with hundreds" do
    expect(hundreds_array).to eq  ["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
  end
  it "should contain an array with the firt numerals" do
    expect(ones_array).to eq ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "XV"]
  end
  context "has an index method that" do
    it "returns the number of tens" do
      expect(tens(20)).to eq 2
    end
    it "return the number of hundreds" do
      expect(hundreds(200)).to eq 2
    end
    it "return the number of thousands" do
      expect(thousands(2000)).to eq 2
    end
  end

  context "when number is above or eqal 1000" do
    it "should return the remaining hundreds" do
      expect(remainder_hundreds(1111)).to eq 111
    end
    it "should return the remaining hundreds" do
      expect(remainder_tens(1111)).to eq 11
    end
    it "should return the remaining hundreds" do
      expect(remainder_ones(1111)).to eq 1
    end
  end

  context "when given a number" do
    it "1 should return I" do
      expect(one_numerals(1)).to eq "I"
    end
    it "10 should return X" do
      expect(ten_numerals(tens(10))).to eq "X"
    end
    it "100 should return C" do
      expect(hundred_numerals(hundreds(100))).to eq "C"
    end
    it "1000 should return MM" do
      expect(thousand_numerals(thousands(1000))).to eq "M"
    end
  end

  context "When given 0" do
    it "should return blank" do
      expect(roman_numerals(0)).to eq ""
    end
  end
end
