def encryption(s)
  strLength = s.length
  cols = Math.sqrt(strLength).ceil
  rows = Math.sqrt(strLength).floor
  if rows*cols < strLength
    rows +=1
  end
end
