def pickingNumbers(a)
  # Write your code here
  myHash = {}
  a.each do |e|
    myHash[e].nil? ? myHash[e] = 1 : myHash[e] += 1
  end
  last = -1
  return myHash[myHash.keys[0]] if myHash.length == 1
  max = 0
  myHash.keys.sort.each do |e|
    if last > 0
      if e - last <= 1 && myHash[e] + myHash[last] > max
        max = myHash[e] + myHash[last]
      end
    end
    last = e
  end
  max
end

p pickingNumbers([1,2,3,4,5,6,7])

p pickingNumbers([4, 97, 5, 97, 97, 4, 97, 4, 97, 97, 97, 97, 4, 4, 5, 5, 97, 5, 97, 99, 4, 97, 5, 97, 97, 97, 5, 5, 97, 4, 5, 97, 97, 5, 97, 4, 97, 5, 4, 4, 97, 5, 5, 5, 4, 97, 97, 4, 97, 5, 4, 4, 97, 97, 97, 5, 5, 97, 4, 97, 97, 5, 4, 97, 97, 4, 97, 97, 97, 5, 4, 4, 97, 4, 4, 97, 5, 97, 97, 97, 97, 4, 97, 5, 97, 5, 4, 97, 4, 5, 97, 97, 5, 97, 5, 97, 5, 97, 97, 97])