def pageCount(n, p)
  #
  # Write your code here.
  #
  tr = p / 2
  tl = n.even? ? (n + 1 - p) / 2 : (n + 1) / 2
  [tr,tl].min
end

