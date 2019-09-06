feature 'attack reduces hit points' do
  scenario 'player1 attacks player2' do
    sign_in_and_play
    expect{ click_link('Attack') }.to change{ $game.player2.hp }.by(-10)
  end
end
