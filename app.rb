require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post "/names" do
    @name1 = params[:first_player_name]
    @name2 = params[:second_player_name]
    erb :names
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
