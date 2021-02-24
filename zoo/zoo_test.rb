require 'minitest/autorun'
require_relative 'zoo'

class ZooTest < MiniTest::Test
  def test_dog_walks_and_runs_but_does_not_fly
    dog = Dog.new
    assert_output('The dog is walking') do
      dog.walk
    end
    assert_output('The dog is running') do
      dog.run
    end
    assert_raises(NoMethodError) do
      dog.fly
    end
  end

  def test_cat_walks_and_runs_but_does_not_fly
    cat = Cat.new
    assert_output('The cat is walking') do
      cat.walk
    end
    assert_output('The cat is running') do
      cat.run
    end
    assert_raises(NoMethodError) do
      cat.fly
    end
  end

  def test_crow_walks_and_flies_but_does_not_run
    crow = Crow.new
    assert_output('The crow is walking') do
      crow.walk
    end
    assert_output('The crow is flying') do
      crow.fly
    end
    assert_raises(NoMethodError) do
      crow.run
    end
  end

  def test_penguin_walks_but_does_not_fly_nor_run
    penguin = Penguin.new
    assert_output('The penguin is walking') do
      penguin.walk
    end
    assert_raises(NoMethodError) do
      penguin.fly
    end
    assert_raises(NoMethodError) do
      penguin.run
    end
  end
end
