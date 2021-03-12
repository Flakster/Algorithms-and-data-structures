def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  guess = (min_interval + max_interval)  / 2
  return guess if guess * guess == number
  (guess * guess) < number ? sqrt_recursive(number, guess, max_interval) : sqrt_recursive(number, min_interval,guess)
end

puts sqrt(25)
puts sqrt(7056)
puts sqrt(144)
puts sqrt(625)
