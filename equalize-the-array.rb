def equalizeArray(arr)
  freq_hash = {}
  arr.each do |e|
    if freq_hash[e].nil?
      freq_hash[e] = 1
    else
      freq_hash[e] += 1
    end
  end
  arr.length - freq_hash.values.max
end

p equalizeArray([1, 2, 2, 3])
#=> 2