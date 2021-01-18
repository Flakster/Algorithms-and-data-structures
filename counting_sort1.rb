def counting_sort(arr)
  my_hash = {}
  (arr.min..arr.max).each do |e|
    my_hash[e] = arr.count(e)
  end
  my_hash.each { | k,v | my_hash[k] += my_hash[k-1] unless k == 1 }
  sorted = Array.new(arr.length)
  arr.each do |e|
    index = my_hash[e]
    sorted[index-1] = e
    my_hash[e] -= 1
  end
  sorted
end