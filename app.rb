require 'sinatra'

class Battle < Sinatra::Base

  get '/' do
    'Testing infrastructure working?'
  end

  get '/sign_in' do
    erb :index
  end

  post '/names' do
    @player1=params[:name_player1]
    @player2=params[:name_player2]
    erb :play
  end

  run! if app_file == $0
end
