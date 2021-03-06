require 'sinatra'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    'Testing infrastructure working?'
  end

  get '/sign_in' do
    erb :index
  end

  post '/names' do
    session[:name_Player1] = params[:name_player1]
    session[:name_Player2] = params[:name_player2]
    redirect '/play'
  end

  get '/play' do
    $game = Game.new(session[:name_Player1], session[:name_Player2])
    erb :play
  end

  get '/attack' do
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    erb :attack
  end

  run! if app_file == $0
end
