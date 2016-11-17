require "roman_numerals"

describe "roman numerals" do

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

  context "when handling remaining numbers" do
    it "should return the remaining hundreds" do
      expect(remainder_hundreds(1111)).to eq 111
    end
    it "should return the remaining tens" do
      expect(remainder_tens(1111)).to eq 11
    end
    it "should return the remaining ones" do
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

    it "1111 should return MCXI" do
      expect(roman_numerals(1111)).to eq "MCXI"
    end
  end

  context "When given 0" do
    it "should return blank" do
      expect(roman_numerals(0)).to eq ""
    end
  end
end
