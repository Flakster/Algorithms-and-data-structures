def stones(n, a, b)
  arr = [0]
  i = 1
  while i < n
    hash = {}
    arr.each do |e|
      hash[e + a] = true
      hash[e + b] = true
    end
    arr = hash.keys
    i += 1
  end
  hash.keys.sort
end

p stones(58,69,24)