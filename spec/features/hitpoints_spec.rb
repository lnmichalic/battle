feature 'View Hit Points' do
  scenario "Player 1 can view Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content('Lubos Hit Points: 100')
  end
end
