def fairRations(b)
  my_hash = {}
  b.each_with_index do | e,i |
    my_hash[i] = e.odd?
  end
  return "NO" if my_hash.values.count(true).odd?
  loaves = 0
  open = false 
  first = -1
  my_hash.each do | k,v |
    if v
      if open
        loaves += 2 * (k-first-1) + 2
        open = false
        first = -1
      else
        open = true
        first = k
      end
    end
  end
  return loaves
end

p fairRations([2, 3, 4, 5, 6])
#=> 4

p fairRations([1, 2])
#=> NO

p fairRations([2,3,4,2,4,2,5,4,6,4,6,7,2,4,5])
#=> 16