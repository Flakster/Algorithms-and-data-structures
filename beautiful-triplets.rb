def beautifulTriplets(d, arr)
  total = 0
  (2..arr.length-1).each do |l|
    (l-1).downto(1).each do |m|
      if arr[l] - arr[m] == d
        (m-1).downto(0) do |f|
          if arr[m]-arr[f] == d
            total +=1
          end
        end
      end
    end
  end
  total
end

p beautifulTriplets(1, [2, 2, 3, 4, 5])
#=> 3