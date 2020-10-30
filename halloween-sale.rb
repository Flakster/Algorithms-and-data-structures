
def howManyGames(p, d, m, s)
  # Return the number of games you can buy
  remaining = s
  current = p
  amount = 0
  while remaining > current
    amount += 1
    remaining -= current
    current = current - d >= m ? current - d : m
  end
  amount
end

p howManyGames(20, 3, 6, 80)