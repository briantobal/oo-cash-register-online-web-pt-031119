require 'pry'

class CashRegister 
  attr_accessor :total, :discount, :last_trans
  
  def initialize(discount=0)
    @total = 0 
    @discount = discount 
  end 
  
  def add_item(title, price, quantity=1)
    @total += (price * quantity)
  end 
  
  def apply_discount
    if @discount > 0 
      @total = @total - @discount*10
      return "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end 
  end 
  
  
end #class  