require 'player'

describe Player do
  subject(:player1) { described_class.new(:player_one) }
  subject(:player2) { described_class.new(:player_two) }

  describe '#name' do
    it 'returns a player name' do
      expect(player1.name).to eq :player_one
    end
  end

  describe '#hitpoints' do
    it 'returns a player hitpoints' do
      expect(player1.hitpoints).to eq Player::DEFAULT_HP
    end
  end

  describe '#receive_damage' do
    it 'reduces the subject\'s hitpoints by #{Player::DEFAULT_HP}' do
      expect{player1.receive_damage}.to change{player1.hitpoints}.by(-10)
    end
  end
end
