require 'spec_helper'

feature 'Switch turns' do
  scenario 'player2 can attack after player1' do
    sign_in_and_play
    click_button('Attack')
    click_button('Cool')
    click_button('Attack')
    expect(page).to have_content('Stark attacked Greyjoy')
  end
end
