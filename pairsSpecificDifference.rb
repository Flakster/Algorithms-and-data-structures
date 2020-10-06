
# arr =  [0, -1, -2, 2, 1]
# k = 1

def pairs(arr, k)
  output = []
  arr.each do |y|
    arr.each do |x|
      if x > y
        if x - y == k
          pair = [x, y]
          output << pair
        end
      end
    end
  end
  return output
end

p pairs([0, -1, -2, 2, 1], 1)