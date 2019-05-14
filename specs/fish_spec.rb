require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Bob")
  end

  def test_name
    assert_equal("Bob", @fish.name)
  end

end
