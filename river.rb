class River

  attr_reader :name
  attr_accessor :shol

  def initialize(name,shol = [])
    @name = name
    @shol = shol
  end

  def count_fish_in_river
    return @shol.count
  end

  def put_fish_in_river(fish)
    fish.each {|x| @shol << x}
  end







end
