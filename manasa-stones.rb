def stones(n, a, b)
  arr1 = [0]
  i = 1
  while i < n
    p i
    arr2 =[]
    arr1.each do |e|
      arr2 << e + a
      arr2 << e + b
    end
    arr2.uniq!
    arr1 = arr2
    i += 1
  end
  arr2.sort
end

