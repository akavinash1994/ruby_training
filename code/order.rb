require_relative 'item'
require 'pry'
class Order
  attr_accessor :items
  def initialize(item_list)
    @items = []
    item_list.each do |item|
      @items << Item.new(item)
    end
  end

  def total_price
    sum = 0
    @items.each do |item|
      sum += item.total_price
    end
    sum.round(2)
  end

  def total_tax
    sum = 0
    @items.each do |item|
      sum += item.tax
    end
    sum.round(2)
  end
end
