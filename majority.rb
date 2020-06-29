nums = [2,2,2,1,1,1,1,2,1]

max = 0
majority = 0

nums.uniq.each do |e| 
  puts "occurrences of #{e} :  #{nums.count(e)}"
  if nums.count(e) > max
    max = nums.count(e)
    majority = e
  end
end

puts "The majority is #{majority}"
return majority