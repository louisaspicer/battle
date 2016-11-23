require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:Player1])
    $player2 = Player.new(params[:Player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.player_name
    @player2 = $player2.player_name
    erb :play
  end

  get '/attack' do
    @player1 = $player1.player_name
    @player2 = $player2.player_name
    erb :attack
  end

  run! if app_file == $0
end
