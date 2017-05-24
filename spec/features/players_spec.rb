feature 'Create player names' do
  scenario 'Players fill in a form and their names are displayed' do
    visit('/')
    fill_in('first_player_name', with: 'Roland')
    fill_in('second_player_name', with: 'Lubos')
    click_button 'Submit'
    expect(page).to have_content('Roland vs. Lubos')
  end
end
