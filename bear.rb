class Bear

  attr_reader :name, :type
  attr_accessor :stomach

  def initialize(name,type,stomach)
    @name = name
    @type = type
    @stomach = []
  end

  def bear_take_fish(river)
    river.shol.each {|fish| @stomach << fish }
    river.shol.clear
  end

  def roar
    return "Roaarh"
  end

  def food_count
    @stomach.count
  end 

end
