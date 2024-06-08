def stock_picker(prices)
  day_to_buy = 1
  day_to_sell = 2
  buy = prices[0] 
  sell = prices[1] 
  profit = 0

  prices.each_with_index do |price, i|
    (i+1..prices.size-1).each do |j|
      next_price = prices[j]
      potential_profit = next_price - price
      if next_price > price && potential_profit > profit
        profit = potential_profit
        buy = price
        sell = next_price
        day_to_buy = i
        day_to_sell = j
      end
    end 
  end
  [day_to_buy, day_to_sell]
end

prices1 = [17,3,6,9,15,8,6,1,10]
prices2 = [1,3,6,9,15,8,6,1,17]
prices3 = [10,3,6,9,15,8,6,17,1]

p stock_picker(prices1) # [1, 4]
p stock_picker(prices2) # [0, 8]
p stock_picker(prices3) # [1, 7]

