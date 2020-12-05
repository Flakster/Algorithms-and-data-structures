def encryption(s)
  arr = s.split('')
  cols = Math.sqrt(arr.length).ceil
  rows = Math.sqrt(arr.length).floor
  rows +=1 if rows*cols < arr.length
  result = []
  arr2 = []
  while arr.length > 0 do
    arr2 << arr.shift(cols)
  end
  (0..cols-1).each do |c|
    word = []
    (0..rows-1).each do |r|
      word << (arr2[r][c].nil? ? ' ' : arr2[r][c])
    end
    word << ' ' unless word[-1] == ' '
    result << word.join('')
  end
  return result.join('')
end