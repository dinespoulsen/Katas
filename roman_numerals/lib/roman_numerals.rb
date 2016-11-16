def roman_numerals(number)
  if number >= 1000
    thousand = thousand_numerals(thousands(number))
    hundred = hundred_numerals(hundreds(remainder_hundreds(number)))
    ten = ten_numerals(tens(remainder_tens(number)))
    one = one_numerals(remainder_ones(number))
    output = thousand + hundred + ten + one
  elsif number >= 100
    hundred = hundred_numerals(hundreds(remainder_hundreds(number)))
    ten = ten_numerals(tens(remainder_tens(number)))
    one = one_numerals(remainder_ones(number))
    output = hundred + ten + one
  elsif number >= 10
    ten = ten_numerals(tens(remainder_tens(number)))
    one = one_numerals(remainder_ones(number))
    output = ten + one
  else
    one_numerals(number)
  end
end

def tens_array
  ['X', "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
end

def hundreds_array
  ["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
end

def ones_array
  ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "XV"]
end

def thousands(number)
  index_thousand = number / 1000
end

def hundreds(number)
  index_hundred = number / 100
end

def tens(number)
  index_tens = number / 10
end

def remainder_hundreds(number)
  remainder_hundreds = number % 1000
end

def remainder_tens(number)
  remainder_tens = number % 100
end

def remainder_ones(number)
  remainder_ones = number % 10
end



def one_numerals(number)
  return "" if number == 0
  ones_array[number-1]
end

def ten_numerals(number)
  return "" if number == 0
  tens_array[number-1]
end

def hundred_numerals(number)
  return "" if number == 0
  hundreds_array[number-1]
end

def thousand_numerals(number)
  return "" if number == 0
  "M" * number
end


puts roman_numerals(116)
