class River

  attr_reader :name
  attr_accessor :shol

  def initialize(name, shol =[])
    @name = name
    @shol = shol
  end

  def count_fish_in_river
    return @shol.count
  end

  def put_fish_in_river(group_of_fish)
    group_of_fish.each {|fish| @shol << fish }
  end


  def fish_count
    @shol.count
  end 






end
