require 'minitest/autorun'
require_relative 'array_with_log'

class ArrayWithLogTest < MiniTest::Test
  def setup
    @array_with_log = ArrayWithLog.new
  end

  def test_it_prints_log_after_adding_item
    assert_output("foo\n") do
      @array_with_log << 'foo'
    end
    assert_output("foo\nbar\n") do
      @array_with_log << 'bar'
    end
  end
end
