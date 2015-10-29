require 'spec_helper'

feature 'Showing a player\'s hitpoints' do
  scenario 'player1: when starting the game' do
    sign_in_and_play
    expect(page).to have_content 'Greyjoy: 60/60HP'
  end
  scenario 'player2: when starting the game' do
    sign_in_and_play
    expect(page).to have_content 'Stark: 60/60HP'
  end
end


