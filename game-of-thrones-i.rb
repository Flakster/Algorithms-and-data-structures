def gameOfThrones(s)
  my_hash = {}
  s.split('').each do |e|
    if my_hash[e].nil?
      my_hash[e] = 1
    else
      my_hash[e] += 1
    end
  end
end