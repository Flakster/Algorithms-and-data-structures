def pageCount(n, p)
  #
  # Write your code here.
  #
  tr = p / 2
  tl = n.even? ? (n + 1 - p) / 2 : (n - p) / 2
  [tr,tl].min
end

p pageCount(5,3)
#=> 1

p pageCount(6,2)
#=> 1