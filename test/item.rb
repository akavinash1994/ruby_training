require "pry"
require 'yaml'
require_relative '../code/order'
require_relative '../code/item'
require 'test/unit'
class TestItem < Test::Unit::TestCase
  def config
    puts "#{Dir.pwd} =====" 
    YAML.safe_load(File.open('../order.config.yml'))
  end

  def readyaml
    input = []
    config['order'].each do |line|
      input << line.split(' ')
    end
    input
  end

  def test_simple
    item_expected_total_price = 32.19
    order_expected_total_price = 74.64
    order_expected_total_tax = 6.66
    assert_equal(item_expected_total_price, Order.new(readyaml).items[0].total_price)
    assert_equal(order_expected_total_tax, Order.new(readyaml).total_tax)
    assert_equal(order_expected_total_price, Order.new(readyaml).total_price)
  end
end
