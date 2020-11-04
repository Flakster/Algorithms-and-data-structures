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
