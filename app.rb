require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    @player1 = params[:Player1]
    @player2 = params[:Player2]
    erb(:play)
  end



  run! if app_file == $0
end
