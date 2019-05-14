require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @fish_1 = Fish.new("Dave")
    @fish_2 = Fish.new("Bob")
    @fish_3 = Fish.new("Jim")
    @river = River.new("Colorado River", [@fish_1, @fish_2, @fish_3])
  end

  def test_name
    assert_equal("Yogi", @bear.name)
  end

  def test_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_stomach
    assert_equal([], @bear.stomach)
  end

  def test_eat_fish
    @bear.eat_fish(@river)
    assert_equal(2, @river.fish_count)
    assert_equal(1, @bear.food_count)
  end

  def test_roar
    assert_equal("Roar....!", @bear.roar)
  end


end
