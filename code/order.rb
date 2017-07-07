require_relative 'item'
class Order
  attr_accessor :items
  def initialize(item_list)
    @items = []
    item_list.each do |item|
      @items << Item.new(item)
    end
  end

  def total_price
    @items.inject(0) { |sum, item| sum + item.total_price }.round(2)
  end

  def total_tax
    @items.inject(0) { |sum, item| sum + item.tax }.round(2)
  end

  def bill
    output = []
    items.each do |item|
      output << item.quantity.to_i.to_s +
               (item.imported? ? ' imported ' : ' ') +
                item.display_name + ' : ' + item.total_price.to_s
    end
    output << 'Sales Taxes : ' + total_tax.to_s
    output << 'Total : ' + total_price.to_s
    output
  end
end
