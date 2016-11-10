def divisible_by_3?(number)
  number % 3 == 0
end


def divisible_by_5?(number)
  number % 5 == 0
end

def divisible_by_3_and_5?(number)
  number % 3 == 0 && number % 5 == 0
end

def fizzbuzz(number)
  return "fizzbuzz" if divisible_by_3_and_5?(number)
  return "fizz" if divisible_by_3?(number)
  return "buzz" if divisible_by_5?(number)
  number
end
