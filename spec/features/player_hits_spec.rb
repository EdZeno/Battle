# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
feature 'Viewing opponents Hit points' do
  scenario 'When playing I should see my opponents hit points on the game screen' do
    visit('/sign_in')
    fill_in('name_player1', with: 'Boris')
    fill_in('name_player2', with: 'James')
    click_on('Submit')
    expect(page).to have_content('James: 60HP')
  end
end
