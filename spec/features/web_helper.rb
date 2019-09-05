def sign_in_and_play
  visit('/sign_in')
  fill_in('name_player1', with: 'Boris')
  fill_in('name_player2', with: 'James')
  click_on('Submit')
end
