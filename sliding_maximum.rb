def sliding_maximum(k, array)
  arr = []
  (0..array.length-k).each{ |e| arr.push array.slice(e,k).max }
  p arr
end

sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# => [5, 7, 9, 9]