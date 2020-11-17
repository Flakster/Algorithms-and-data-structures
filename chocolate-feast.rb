def chocolateFeast(n, c, m)
  total = 0
  num = n/c
  total += num
  remainder = 0
  while num + remainder >= m do
    num = (num + remainder) / m
    remainder = (num + remainder) % m 
    total +=num
  end
  total
end