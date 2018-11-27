require("minitest/autorun")
require('minitest/rg')
require_relative("../fish")

class FishTest < MiniTest::Test

  def setup
    @fish_1 = Fish.new("Bob")
    @fish_2 = Fish.new("Albert")
    @fish_3 = Fish.new("Nicola")
    @fish_4 = Fish.new("Gulp")

    @group_of_fish = [@fish_1,@fish_2,@fish_3,@fish_4]
  end

  def test_get_name
    assert_equal("Albert", @fish_2.fish_name)
  end



end
