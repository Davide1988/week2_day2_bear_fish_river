class Bear

  attr_reader :name, :type
  attr_accessor :stomach

  def initialize(name,type,stomach)
    @name = name
    @type = type
    @stomach = []
  end

  def bear_take_fish(shol)
    @stomach << shol
  end

end
