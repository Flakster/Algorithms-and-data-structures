def birthdayCakeCandles(candles)
  # Write your code here
  max = candles.max
  candles.count(max)
end

p birthdayCakeCandles([1,2,3,3,3,3])
#=>4