require_relative '../module/tax_calculator'
class Item
  include TaxCalculator
  def initialize(type = '', name = '', quantity = 0, cost = 0.0, is_imported = 'no')
    @type = type
    @name = name
    @quantity = quantity
    @cost = cost
    @is_imported = is_imported
  end
end
