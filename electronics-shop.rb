def getMoneySpent(keyboards, drives, b)
  # Write your code here.
  max = -1
  keyboards.each do |k|
    if k < b
      drives.each do |d|
        if k + d <= b && k + d > max
          max = k + d
        end
      end
    end
  end
  max
end

p getMoneySpent([3,1],[5, 2, 8],10)
#=> 9