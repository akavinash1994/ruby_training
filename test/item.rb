require_relative '../code/item'
require 'test/unit'
class TestItem < Test::Unit::TestCase
	def test_simple
		expected = 61.5
		assert_equal(expected, Item.new('food', 'rice', 3, 20.5, 'no').costaftertax)
	end
end
