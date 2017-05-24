feature 'Create player names' do
  scenario 'Players fill in a form and their names are displayed' do
    sign_in_and_play
    expect(page).to have_content('Roland vs. Lubos')
  end
end
