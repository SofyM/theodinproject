def stock_picker(stock_prices)
  buy_day = 0
  sell_day = 1
  best_profit = stock_prices[sell_day] - stock_prices[buy_day]

  stock_prices.each_with_index do |buy_price, buy_ind|
    break if buy_ind == stock_prices.length - 1
    (buy_ind + 1).upto(stock_prices.length - 1) do |sell_ind|
      if stock_prices[sell_ind] - buy_price > best_profit
        sell_day = sell_ind
        buy_day = buy_ind
        best_profit = stock_prices[sell_day] - buy_price
      end
    end
  end
  [buy_day, sell_day]
end

puts stock_picker([17,3,6,9,15,8,6,8,1])
