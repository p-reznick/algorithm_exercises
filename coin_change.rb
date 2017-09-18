# 322
# Sunny's solution
# mental model: decrement amount while traversing
def coin_change(coins, amount)
  coins = coins.sort.reverse
  coin_change_helper(coins, amount)
end

def coin_change_helper(coins, amount, cache={})
  if amount == 0
    return 0
  elsif amount < 0
    return -1
  elsif cache[amount]
    return cache[amount]
  end

  min = amount + 1

  coins.each do |coin|
    remaining = amount - coin
    new_min = coin_change_helper(coins, remaining, cache)

    min = new_min + 1 if new_min >= 0 && new_min < min
  end

  cache[amount] = (min == amount + 1 ? -1 : min)
end
