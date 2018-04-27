require'pry'

class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity
  @@all = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @@all << title
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

  def items
    @@all.flatten
  end

  # def void_last_transaction
  #     #subtracts the last transaction from the total
  #     self.add_item(title, price, quantity = 1).map do |t,p,q|
  #     @total - p[-1]
  #   end
  # end

end
