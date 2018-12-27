require("minitest/autorun")
require('minitest/rg')
require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Rio Grande")
    @fish_1 = Fish.new("Bob")
    @fish_2 = Fish.new("Albert")
    @fish_3 = Fish.new("Nicola")
    @fish_4 = Fish.new("Gulp")

    @group_of_fish = [@fish_1,@fish_2,@fish_3,@fish_4]

  end

  def test_get_name
    assert_equal("Rio Grande", @river.name)
  end

  def test_count_fish_in_river
    assert_equal(0, @river.count_fish_in_river)
  end

  def test_put_fish_in_river
    @river.put_fish_in_river(@group_of_fish)
    assert_equal(4, @river.count_fish_in_river)
  end


  def test_fish_count
    assert_equal(0,@river.fish_count)
  end

  def test_fish_count__with_fish
    @river.put_fish_in_river(@group_of_fish)
    assert_equal(4,@river.fish_count)
  end 





end
