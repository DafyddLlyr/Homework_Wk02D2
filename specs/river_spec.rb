require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")

class TestRiver < MiniTest::Test

  def setup
    @fish_1 = Fish.new("Dave")
    @fish_2 = Fish.new("Bob")
    @fish_3 = Fish.new("Jim")
    @river = River.new("Colorado River", [@fish_1, @fish_2, @fish_3])
  end

  def test_name
    assert_equal("Colorado River", @river.name)
  end

  def test_fishes
    assert_equal([@fish_1, @fish_2, @fish_3], @river.fishes)
  end

  def test_fish_count
    assert_equal(3, @river.fish_count)
  end

  def test_remove
    @river.remove
    assert_equal(2, @river.fish_count)
    assert_equal(false, @river.fishes.include?(@fish_3))
  end

end
