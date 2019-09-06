require 'game'

describe Game do
  it 'initializes with two players' do
    sign_in_and_play
    expect($game.player1).to exist
  end
end
