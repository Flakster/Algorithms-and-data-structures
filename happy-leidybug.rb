def happyLadybugs(b)
  freq = {}
  b.split('').each do |e|
    freq[e] = freq[e].nil? ? 1 : freq[e] += 1 
  end
  freq.keys.each do |k|
    if k == '_'
      return 'NO' if freq[k] < 1
    else
      return 'NO' if freq[k] < 2
    end
  end
  return 'YES'
end