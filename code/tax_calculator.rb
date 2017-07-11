require 'yaml'
module TaxCalculator
  def config
    @config ||= YAML.safe_load(File.open('./tax.config.yml'))
  end

  def basic_sale_tax
    config['basic_sales_tax']
  end

  def import_duty
    config['import_duty']
  end

  def exempt?
    exempt_item = config['exempt_item'].map(&:values).flatten
    !(exempt_item & detail).empty?
  end

  def total_price
    duty = tax
    (cost * quantity + duty).round(2)
  end

  def tax
    return 0 if exempt? && !imported?
    duty = cost * quantity
    duty_tax = 0
    duty_tax =  import_duty if imported?
    duty_tax += basic_sale_tax unless exempt?
    duty * duty_tax
  end
end
