def findMedian(arr)
  arr.sort[arr.length/2 ]
end

p findMedian([0, 1, 2, 4, 6, 5, 3])
#=> 3