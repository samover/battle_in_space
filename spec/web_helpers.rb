def sign_in_and_play
  visit('/')
  fill_in(:first_player_name, with: 'Greyjoy')
  fill_in(:second_player_name, with: 'Stark')
  click_button('Battle')
end
