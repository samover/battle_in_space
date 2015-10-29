require 'spec_helper'
require 'player'
require 'game'

feature 'Attack opponent' do
  scenario 'show confirmation of attacking player 1' do
    sign_in_and_play
    click_button('Attack')
    click_button('Cool')
    click_button('Attack')
    expect(page).to have_content 'Stark attacked Greyjoy'
  end

  scenario 'show confirmation of attacking player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Greyjoy attacked Stark'
  end
  
  scenario "reduces player 1 hitpoints by 10  when attacked" do
    sign_in_and_play
    click_button('Attack')
    click_button('Cool')
    click_button('Attack')
    click_button('Cool')
    expect(page).to have_content 'Greyjoy: 50/60HP'
  end

  scenario "reduces player 2 hitpoints by 10  when attacked" do
    sign_in_and_play
    click_button('Attack')
    click_button('Cool')
    expect(page).to have_content 'Stark: 50/60HP'
  end
end

