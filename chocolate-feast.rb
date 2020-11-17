def chocolateFeast(n, c, m)
  total = 0
  total += n/c
  wraps = total
  remainding_wraps = 0
  while wraps + remainding_wraps >= m do
    aux = (wraps + remainding_wraps) / m
    remainding_wraps= wraps + remainding_wraps - aux * m
    total += aux
    wraps = aux 
  end
  total
end

p chocolateFeast(10, 2, 5)
#=>6

p chocolateFeast(12, 4, 4)
#=>3