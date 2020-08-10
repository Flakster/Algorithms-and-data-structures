def sum(array)
  return array.reduce{|e,m| m+e}
end

p sum([1,2,4])