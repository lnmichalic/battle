require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post "/names" do
    session[:name1] = params[:first_player_name]
    session[:name2] = params[:second_player_name]
    redirect '/play'
  end

  get '/play' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    erb :play
  end

  get "/attack" do
    @name2 = session[:name2]
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
