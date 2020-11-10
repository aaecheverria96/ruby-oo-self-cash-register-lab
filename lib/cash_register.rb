require 'pry'

class CashRegister 

    attr_accessor :total, :discount, :items, :last_transaction 
    

    
    
    def initialize(discount = 0) 
        @total = 0
        @discount = discount 
        @items = []
    end 

    def add_item(title, price, quantity = 1) 
        @last_transaction = price * quantity
        @total = @total + @last_transaction

        
         quantity.times do 
            @items << title 
         end  
        
    end 

    def apply_discount 

        if @discount == 0 
            return "There is no discount to apply." 
        else 
        
        amount_off = (@total * (@discount.to_f/100)).to_i  
        @total = @total - amount_off
    
        return "After the discount, the total comes to $#{@total}."  
        end 
        
    end 

    def items
       @items 
     end 

     def void_last_transaction 
        @total = @total - @last_transaction 
        


        
     end 


end 