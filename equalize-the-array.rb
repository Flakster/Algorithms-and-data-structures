def equalizeArray(arr)
  freq_hash = {}
  arr.each do |e|
    freq_hash[e].nil? ? freq_hash[e] = 1 : freq_hash[e] += 1
  end
  arr.length - freq_hash.values.max
end

p equalizeArray([1, 2, 2, 3])
#=> 2

p equalizeArray([3, 3, 2, 1, 3])
#=> 2