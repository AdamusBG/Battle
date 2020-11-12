require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:names)
  end

  post '/submit_names' do
    player1 = Player.new(params["name1"])
    player2 = Player.new(params["name2"])
    $game = Game.new(player1, player2)
    redirect("/play")
  end

  get '/play' do
    erb(:play)
  end

  post '/hit' do
    $game.damage_player($game.player_2)
    erb(:hit)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
