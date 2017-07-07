require_relative '../code/pattern'
require 'test/unit'

class TestPattern < Test::Unit::TestCase
  def test_simple
    expected = "*\n"\
               "**\n"\
               "***\n"\
               "****\n"\
               '*****'
    assert_equal(expected, Pattern.new(5).generate_pattern)
  end
end
