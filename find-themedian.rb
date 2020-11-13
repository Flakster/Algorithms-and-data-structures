def findMedian(arr)
  arr.sort[arr.length/2 ]
end

p findMedian([0, 1, 2, 4, 6, 5, 3])
#=> 3

p findMedian([1, 5, 7, 2, 8, 2, 6, 4, 9, 6, 8, 3, 1])