require_relative 'tax_calculator'
class Item
  include TaxCalculator
  attr_accessor :name, :cost, :quantity, :detail
  def initialize(item)
    @detail = item
    assign
  end

  def assign
    @cost = detail[-1].to_f
    @quantity = detail[0].to_f
    @name = detail[1..detail.length - 3]
  end

  def display_name
    name.gsub('imported', ' ')
  end

  def imported?
    name.include?('imported')
  end
end
