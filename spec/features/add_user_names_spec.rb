require 'spec_helper'

feature 'Entering player names' do
  scenario 'by filling in a form' do
    sign_in_and_play
    expect(page).to have_content 'Greyjoy vs Stark'
  end
end


