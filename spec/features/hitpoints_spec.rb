feature 'View Hit Points' do
  scenario "Player 1 can view Player 2's hit points" do
    visit('/')
    fill_in('first_player_name', with: 'Roland')
    fill_in('second_player_name', with: 'Lubos')
    click_button 'Submit'
    expect(page).to have_content('Lubos Hit Points: 100')
  end
end
