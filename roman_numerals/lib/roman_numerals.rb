

  ROMANS = {1 => "I",
    5 => "V",
    10 => "X",
    50 => "L",
    100 => "C",
    500 => "D",
    1000 => "M"
  }

def roman_numerals(number)

  if number >= 1000
    thousand = thousand_numerals(thousands(number))
    hundred = hundred_numerals(hundreds(remainder_hundreds(number)))
    ten = ten_numerals(tens(remainder_tens(number)))
    one = one_numerals(remainder_ones(number))
    thousand + hundred + ten + one
  elsif number >= 100
    hundred = hundred_numerals(hundreds(remainder_hundreds(number)))
    ten = ten_numerals(tens(remainder_tens(number)))
    one = one_numerals(remainder_ones(number))
    hundred + ten + one
  elsif number >= 10
    ten = ten_numerals(tens(remainder_tens(number)))
    one = one_numerals(remainder_ones(number))
    ten + one
  else
    one_numerals(number)
  end
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
  return ROMANS[1] + ROMANS[10] if number >= 9
  return ROMANS[5] + ROMANS[1] * (number % 5 ) if number >= 6
  return ROMANS[5] if number >= 5
  return ROMANS[1] + ROMANS[5] if number >= 4
  return ROMANS[1] * number if number >= 1
  return ROMANS[1] if number == 1
end

def ten_numerals(number)
  return "" if number == 0
  return ROMANS[1] + ROMANS[100] if number * 10 >= 90
  return ROMANS[50] + ROMANS[10] * (number % 5 ) if number *10 >= 60
  return ROMANS[50] if number * 10 >= 50
  return ROMANS[10] + ROMANS[50] if number * 10 >= 40
  return ROMANS[10] * number if number * 10 >= 10
  return ROMANS[10] if number * 10 == 10
end

def hundred_numerals(number)
  return "" if number == 0
  return ROMANS[100] + ROMANS[1000] if number * 100 >= 900
  return ROMANS[500] + ROMANS[100] * (number % 5 ) if number *100 >= 600
  return ROMANS[500] if number * 100 >= 500
  return ROMANS[100] + ROMANS[500] if number * 100 >= 400
  return ROMANS[100] * number if number * 100 >= 10
  return ROMANS[100] if number * 100 == 100
end

def thousand_numerals(number)
  return "" if number == 0
   ROMANS[1000] * number
end

puts roman_numerals(10)
