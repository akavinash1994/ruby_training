require 'yaml'
require 'pry'
module TaxCalculator
  @@output = ''
  def config
    YAML::load(File.open('../tax.config.yml'))
  end

  def basic_sale_tax
    config['basic_sales_tax']
  end

  def import_duty
    config['import_duty']
  end

  def exempt?(item)
    exempt_item = config['exempt_item'].map(&:values).flatten
    !(exempt_item & detail).empty?
  end

  def total_price
    duty = tax
    (cost * quantity + duty).round(2)
  end

  def tax
    duty = cost * quantity
    return 0 if (exempt?(detail)) && (!imported?)
    return duty * import_duty if (exempt?(detail)) && (imported?)
    return duty * import_duty + duty * basic_sale_tax if (!exempt?(detail) && (imported?))
    return duty * basic_sale_tax 
  end
end
