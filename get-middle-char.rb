def get_middle(str)
  return str if str.length < 2
  if str.length.even?
    return str.slice(str.length/2 - 1, 2)
  else
    return str.slice(str.length/2, 1)
  end
end

p get_middle('middle')