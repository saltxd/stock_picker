def stock_picker(prices)
  best_buy_day = 0
  best_sell_day = 0
  max_profit = 0

  prices.each_index do |buy_day|
    (buy_day + 1...prices.length).each do |sell_day|
      potential_profit = prices[sell_day] - prices[buy_day]

      if potential_profit > max_profit
        max_profit = potential_profit
        best_buy_day = buy_day
        best_sell_day = sell_day
      end 
    end
  end

  [best_buy_day, best_sell_day]
end

stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
best_days = stock_picker(stock_prices)
puts best_days.inspect  # Output: [1, 4]
