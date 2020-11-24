def find_duplicate(nums)
    hash = {}
    nums.each do |e|
      if hash[e].nil? 
        hash[e] = 1 
      else
         return e
      end
    end
end

p find_duplicate([1, 2, 3, 4, 5, 1, 6, 7, 8, 9])
#=>1