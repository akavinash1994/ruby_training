require 'yaml'
module TaxCalculator
  def config
    YAML::load(File.open('../tax.config.yml'))
  end
  def basic_sale_tax
    config['basic_sales_tax']
  end
  def import_duty
    config['import_duty']
  end
  def isexempt
    exempt_item = config['exempt_item'].map(&:values).flatten
    exempt_item.include?(@name)
  end
  def costaftertax
    new_cost=0
    if isexempt
      if @is_imported == 'yes'
        new_cost = @cost * @quantity * import_duty
      else
        new_cost = @cost * @quantity
      end
    else
      new_cost = @cost * @quantity * basic_sale_tax
      if @is_imported == 'yes'
        new_cost = new_cost * slef.import_duty
      end
    end 
  end
end
