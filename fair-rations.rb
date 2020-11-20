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
  loaves
end