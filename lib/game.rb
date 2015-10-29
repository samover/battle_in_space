class Game
  attr_reader :players, :attacker, :defender
  
  def initialize(player_one, player_two)
    @players = [player_one, player_two]
    @attacker = players[1]
    @defender = players[0]
  end

  def attack player
    player.receive_damage
  end
  
  def player_one
    players[0]
  end

  def player_two
    players[1]
  end

  def switch_turn
    self.attacker, self.defender = self.defender, self.attacker
  end

  private
  attr_writer :attacker, :defender
end
