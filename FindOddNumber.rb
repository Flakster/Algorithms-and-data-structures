# find the number that appears an odd number of times
def findOdd(array)
  array.uniq.each do |e| 
    return e if (array.count(e).odd?)
  end
end

arr = [1, 4, 6, 4, 1, 6, 8]

p findOdd(arr)