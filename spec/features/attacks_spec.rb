feature 'attacking' do
  scenario 'Player 1 attacks Player2' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("You have attacked Lubos successfully!")
  end
end
