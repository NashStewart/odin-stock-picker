def stock_picker(prices)
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
      end
    end 
  end
  "for a profit of $#{sell} - $#{buy} == $#{profit}"
end

prices1 = [17,3,6,9,15,8,6,1,10]
prices2 = [1,3,6,9,15,8,6,1,17]
prices3 = [10,3,6,9,15,8,6,17,1]

p stock_picker(prices1)
p stock_picker(prices2)
p stock_picker(prices3)

