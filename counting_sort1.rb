def counting_sort(arr)
  my_hash = {}
  (arr.min..arr.max).each do |e|
    my_hash[e] = arr.count(e)
  end
  my_hash.each { | k,v | my_hash[k] += my_hash[k-1] unless k == 1 }
  
end