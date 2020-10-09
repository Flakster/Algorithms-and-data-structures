def can_jump(nums)
  return true if nums.length == 1
  nums.each_with_index do |num,i|
      if num == 0
          distance = 1
          index = i - 1
          possible = false
          while index >= 0 do
              if nums[index] > distance
                  possible = true
                  break
              else
                  index -=1
                  distance +=1
              end
          end
          return false if !possible
      end
  end
  return true
end

p can_jump([0])