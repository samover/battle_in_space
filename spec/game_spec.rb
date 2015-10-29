require 'game'

describe Game do
  subject(:game) { described_class.new player_one, player_two }

  let(:player_one) { double(:player_one, name: 'Luke') }
  let(:player_two) { double(:player_two, name: 'Darth Vader') } 

 describe '#attack' do
    it 'allows one player to attack another' do
      expect(player_one).to receive(:receive_damage)
      game.attack player_one
    end
  end

 describe '#player_one' do
   it 'retrieves player one' do
     expect(game.player_one).to eq player_one
   end
 end

 describe '#player_two' do
   it 'retrieves player two' do
     expect(game.player_two).to eq player_two
   end
 end

 describe '#switch_turn' do
   it 'switches to the other player' do
     game.switch_turn
     expect(game.attacker).to eq player_one
   end
 end

 describe '#attacker' do
   it 'retrieves the player whose turn it is to attack' do
     game.switch_turn
     expect(game.attacker).to eq player_one 
   end
 end

 describe '#defender' do
   it 'retrieves the player who is defending' do
     game.switch_turn
     expect(game.defender).to eq player_two
   end
 end
end

