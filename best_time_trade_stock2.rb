def max_profit(prices)
  total = 0
  profit = 0
  buy = prices[0]
  (0..prices.length-1).each do |i|
    if prices[i] - buy >= profit
      profit = prices[i] - buy
    else
      total += prices[i-1] - buy
      profit = 0
      buy = prices[i]
    end
    buy = [buy, prices[i]].min
  end
  if profit > 0
    total += profit
  end
  return total
end

p max_profit([7,1,5,3,6,4])