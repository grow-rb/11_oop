require 'minitest/autorun'
require_relative 'my_queue'

class MyQueueTest < MiniTest::Test
  def setup
    @queue = MyQueue.new
  end

  def test_enqueue
    @queue.enqueue(1)
    assert_equal [1], @queue.inspect
  end

  def test_dequeue
    @queue.enqueue(1)
    assert_equal [1], @queue.dequeue
    assert_equal [], @queue.inspect
  end

  def test_not_responding_to_push
    assert_raises(NoMethodError) do
      @queue.push(1)
    end
  end

  def test_enqueue_and_dequeue_multiple_items
    skip
    @queue.enqueue(1, 2, 3)
    @queue.dequeue(2)
    assert_equal [3], @queue.inspect
  end
end
