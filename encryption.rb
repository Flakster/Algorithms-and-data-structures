def encryption(s)
  strLength = s.length
  cols = Math.sqrt(strLength).ceil
  rows = Math.sqrt(strLength).floor
  if rows*cols < strLength
    rows +=1
  end
  arr = s.split('')
  arr2 = []
  while arr.length >= cols do
    arr2 << arr.shift(cols)
  end
  if arr.length > 0
    arr2 << arr
  end
  arr2
end


p encryption('chillout')