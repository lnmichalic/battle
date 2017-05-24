require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post "/names" do
    $player1 = Player.new(params[:first_player_name])
    $player2 = Player.new(params[:second_player_name])
    redirect '/play'
  end

  get '/play' do
    @name1 = $player1.name
    @name2 = $player2.name
    erb :play
  end

  get "/attack" do
    @name2 = $player2.name
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
