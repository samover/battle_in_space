require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_one = Player.new(params[:first_player_name])
    player_two = Player.new(params[:second_player_name])
    $game = Game.new player_one, player_two
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.switch_turn
    @game.attack @game.defender
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
