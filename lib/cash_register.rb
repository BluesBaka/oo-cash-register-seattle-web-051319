class CashRegister

attr_accessor :total, :discount, :last_transaction, :items



def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
end

#item * quantity for the price
def add_item(title, price, quantity = 1)
    @total += price * quantity
     quantity.times do
       @items << title
     end
      @last_transaction = price * quantity
end

# def apply_discount
#   if @discount != 0
#     @total = (total * (100 - (discount.to_f/100)).to_i
#   end
# end

def apply_discount
  if discount != 0
    @total -= (@total * (discount.to_f/100)).to_i
    "After the discount, the total comes to $#{@total}."
  else
    "There is no discount to apply."
  end

end

def void_last_transaction
  @total = @total - @last_transaction
end

end
