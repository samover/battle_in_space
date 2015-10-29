class Player
  DEFAULT_HP = 60

  attr_reader :name, :hitpoints

  def initialize(name)
    @name = name
    @hitpoints = DEFAULT_HP
  end

  def receive_damage
    self.hitpoints -= 10
  end

  private
  attr_writer :hitpoints
end
