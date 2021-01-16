def counting_sort(arr)
  my_hash = {}
  (arr.min..arr.max).each do |e|
    my_hash[e] = arr.count(e)
  end
  my_hash
end