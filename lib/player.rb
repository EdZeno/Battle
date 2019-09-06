class Player

  attr_reader :name, :hp

  def initialize(name = 'Boris', hp = 60)
    @name = name
    @hp = hp
  end

  def damage
    @hp -= 10
  end

end
