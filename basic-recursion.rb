def sum(number)
  # Your code here
  return 1 if number == 1
  return sum(number-1) + number 
end

puts sum(4)
puts sum(10)