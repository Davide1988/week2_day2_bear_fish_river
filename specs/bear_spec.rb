require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Wojtek", "Dancing bear", [])
    @river = River.new("Fiume",[@group_of_fish])
  end

  def test_get_bear_name
    assert_equal("Wojtek", @bear.name)
  end

  def test_bear_take_fish
    @bear.bear_take_fish(@shol)
    assert_equal(1, @bear.stomach)
  end

end
