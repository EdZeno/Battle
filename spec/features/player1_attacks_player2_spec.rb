feature 'player1 attacks player2' do
  scenario 'attack' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content('Boris attacked James')
  end
end
