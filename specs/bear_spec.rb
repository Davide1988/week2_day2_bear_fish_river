require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Wojtek", "Dancing Bear", [])
    @river = River.new("Rio Grande")

    @fish_1 = Fish.new("Bob")
    @fish_2 = Fish.new("Albert")
    @fish_3 = Fish.new("Nicola")
    @fish_4 = Fish.new("Gulp")

    @group_of_fish = [@fish_1,@fish_2,@fish_3,@fish_4]

  end

  def test_get_bear_name
    assert_equal("Wojtek", @bear.name)
  end

  def test_get_bear_type
    assert_equal("Dancing Bear", @bear.type)
  end


  def test_bear_take_fish
    @river.put_fish_in_river(@group_of_fish)
    @bear.bear_take_fish(@river)
    assert_equal(4, @bear.stomach.count)
    assert_equal(0, @river.count_fish_in_river)
  end


  def test_roar
    assert_equal("Roaarh", @bear.roar)
  end


 def test_food_count
   assert_equal(0, @bear.food_count)
 end 


end
