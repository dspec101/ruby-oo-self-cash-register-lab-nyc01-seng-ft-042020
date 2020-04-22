require 'pry'

class CashRegister

    attr_accessor :total, :discount, :last_transaction_amount, :items
    def initialize(discount = 0)
        @total = 0 
        @discount = discount
        @items = []
    end
 

    def add_item (title, price, quantity = 1) 
        @total += price*quantity
        i = 0
        while i < quantity
         @items << title
         i += 1
        end
    @last_transaction_amount = price*quantity
    @total
    end


    def apply_discount ()
     if @discount > 0
        @total = @total - (@total.to_f * @discount/100).to_i
        "After the discount, the total comes to $#{@total}."
     else
        "There is no discount to apply."
     end
    end
  
def void_last_transaction
        @total -= @last_transaction_amount
    end
end
