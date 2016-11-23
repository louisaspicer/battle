require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    session["Player1"] =   params[:Player1]
    session["Player2"] =  params[:Player2]
    redirect '/play'
  end

  get '/play' do
    p session
    @player1 = session["Player1"]
    @player2 = session["Player2"]
    erb :play
  end

  run! if app_file == $0
end
