def birthdayCakeCandles(candles)
  # Write your code here
  max = candles.max
  candles.count(max)
end

p birthdayCakeCandles([1,2,3,3,3,3])
#=>4

p birthdayCakeCandles([1,2,3,3,3,3,4])
#=>1

p birthdayCakeCandles([3, 2, 1, 3])
#=>2


