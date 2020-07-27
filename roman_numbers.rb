roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

def integer_to_roman(roman_mapping, number, result = "")
  return result if number == 0
  puts "number is #{number}"
  roman_mapping.keys.each do |divisor|
    puts "divisor is #{divisor}"
    quotient, modulus = number.divmod(divisor)
    puts "quotient is #{quotient} and modulus is #{modulus}"
    result << roman_mapping[divisor] * quotient
    puts "result is #{result}"
    return integer_to_roman(roman_mapping, modulus, result) if quotient > 0
  end
end

p integer_to_roman(roman_mapping,8, "");