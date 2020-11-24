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