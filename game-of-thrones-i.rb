def gameOfThrones(s)
  my_hash = {}
  s.split('').each do |e|
    if my_hash[e].nil?
      my_hash[e] = 1
    else
      my_hash[e] += 1
    end
  end
  p my_hash
  singles = my_hash.keys.count - my_hash.values.count{|e| e.even?}
  if singles > 1
    return "NO" 
  else
    return "YES"
  end
end