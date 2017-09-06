# 121
# largest peak P following smallest valley S; P - S
# Time: O(N), Space: O(N)
def max_profit(prices)
    min_price = prices.first
    max_profit = 0

    prices.each do |price|
         if price < min_price
            min_price = price
         elsif price - min_price > max_profit
            max_profit = price - min_price
         end
    end

    max_profit
end
