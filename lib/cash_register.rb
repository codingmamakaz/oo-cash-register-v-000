require'pry'

class CashRegister
  attr_accessor :total, :discount, :price, :quantity
  attr_reader :items


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    quantity.times do
       @items << item
    end
    @total = @total + (price * quantity)
  end

  def apply_discount
    if @discount.equal?(0)
      "There is no discount to apply."
    elsif
    @total = @total * 0.8
    "After the discount, the total comes to $#{@total.round}."
    end
  end

  def void_last_transaction
      #subtracts the last transaction from the total

    end
  end

end
