def happyLadybugs(b)
  return 'YES' if b.length.zero?
  return 'NO' if b.length == 1 && b != '_'
  freq = {}
  arr = b.split('')
  last = arr[0]
  single = false
  count = 0
  arr.each_with_index do |e,i|
    freq[e] = freq[e].nil? ? 1 : freq[e] += 1
    if i > 0 
      if e == last
        count += 1
      elsif count.zero? || i == arr.length-1
        single = true
      else
        count = 0
      end
    end 
    last = e
  end
  return 'YES' unless single
  return 'NO' if freq['_'].nil?
  freq.keys.each do |k|
    if k == '_'
      next
    else
      return 'NO' if freq[k] < 2
    end
  end
  'YES'
end

p happyLadybugs('G')
#=> 'NO'

p happyLadybugs('BBRRYY')
#=> 'YES'