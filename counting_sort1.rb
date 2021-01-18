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

p counting_sort([4,3,5,2,6,1])
#=> [1,2,3,4,5,6]

p counting_sort([3,2,4,1,2,1,3,4,5])
#=> [1, 1, 2, 2, 3, 3, 4, 4, 5]

p counting_sort([5,1,8,10,7])
#=> [1, 5, 7, 8, 10]