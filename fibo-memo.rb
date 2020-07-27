memo = []
(0..100).each do |i|
  memo[i] = i < 2 ? i : memo[i-1] + memo[i-2];
end
puts memo