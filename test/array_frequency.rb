require_relative "../code/array_frequency"
require "test/unit"
 
class TestArrayFrequency < Test::Unit::TestCase
  def test_simple
    expected = {"1" => 1, "2" => 1, "a" => 1, "b" => 1}
    assert_equal(expected, ArrayFrequency.new(["1", "2", "a", "b"]).count )
  end
end