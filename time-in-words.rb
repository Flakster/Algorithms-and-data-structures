def timeInWords(h, m)
  num = {
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "quarter",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    21 => "twenty one",
    22 => "twenty two ",
    23 => "twenty three",
    24 => "twenty four",
    25 => "twenty five",
    26 => "twenty six",
    27 => "twenty seven",
    28 => "twenty eight",
    29 => "twenty nine",
    30 => "half"
  }
  if m.zero?
    return "#{num[h]} o' clock"
  end
  if m <= 30
    string = num[m]
    unless m == 15 || m == 30
      string += " minute"
      string += 's' if m > 1 
    end
    return "#{string} past #{num[h]}"
  else
    r = 60 - m
    string = num[r]
    unless r == 15
      string += " minute"
      string += 's' if r > 1
    end
    h = 0 if h == 12
    return "#{string} to #{num[h+1]}"
  end
end