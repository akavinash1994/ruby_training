require 'yaml'
require_relative '../code/order'
require_relative '../code/item'
require 'test/unit'
class TestItem < Test::Unit::TestCase
  def config
    @config ||= YAML.safe_load(File.open('./order.config.yml'))
  end

  def test_simple
    (1..3).each do |key|
      input = config['sale_tax']['inputs'][key].map { |i| i.split(' ') }
      expected = config['sale_tax']['outputs'][key]
      assert_equal(expected, Order.new(input).bill)
    end
  end
end
