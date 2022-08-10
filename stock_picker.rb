require 'pry-byebug'

def stock_picker (stock_prices)

    most_profit  = 0
    best_day_to_buy = 0
    best_day_to_sell = 0

    for( i = 0; i < stock_prices.size; i++ )
        for( j = i+1; j < stock_prices.size; j++ )
            if (stock_prices[j] - stock_prices[i] > most_profit)
                most_profit = stock_picker[j] - stock_prices[i]
                best_day_to_buy = i
                best_day_to_sell = j
            end
        end
    end
    best_buy_and_sell_days = [best_day_to_buy, best_day_to_sell]
end



stock_picker([17,3,6,9,15,8,6,1,10])