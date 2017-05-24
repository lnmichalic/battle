
def sign_in_and_play
  visit('/')
  fill_in('first_player_name', with: 'Roland')
  fill_in('second_player_name', with: 'Lubos')
  click_button 'Submit'
end
