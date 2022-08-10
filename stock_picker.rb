require 'pry-byebug'

def stock_picker(stock_prices)

    most_profit  = 0
    best_day_to_buy = 0
    best_day_to_sell = 0

    stock_picker.each_with_index do |buying_day, buying_day_index|
        stock.each_with_index do |selling_day, selling_day_index|
            # To avoid comparing same day or comparing days before buying day.
            if buying_day_index == selling_day_index || selling_day_index < buying_day_index
                next
            end
            if buying_day - selling_day > most_profit
                most_profit = buying_day -selling_day
                best_day_to_buy = buying_day_index 
                best_day_to_sell = selling_day_index 
            end
        end
    end
        
    best_buy_and_sell_days = [best_day_to_buy, best_day_to_sell]
end



p stock_picker([17,3,6,9,15,8,6,1,10])