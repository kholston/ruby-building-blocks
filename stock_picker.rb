def stock_picker stocks
    buy_index = 0
    sell_index = 1
    profit = stocks[1] - stocks[0]
    

    stocks.each_with_index do |first_price,first_index|
        stocks.each_with_index do |second_price,second_index|
            if second_index > first_index and (second_price - first_price) > profit
                profit = second_price - first_price
                buy_index = first_index
                sell_index = second_index
            end
        end
    end
    puts "Buy Day: #{buy_index}, Sell Day: #{sell_index}"
end

stock_picker([17,3,6,9,15,8,6,1,10])
#Should return [1,4]