def move(starting, goal)
  # your code here
  arr = [1,2,3] -[starting] - [goal]
  aux = arr[0]
  output =''
  output << " #{starting}->#{aux}"
  output << " #{starting}->#{goal}"
  output << " #{aux}->#{goal}"
end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3
