require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:names)
  end

  post '/submit_names' do
    session[:name1] = params["name1"]
    session[:name2] = params["name2"]
    redirect("/play")
  end

  get '/play' do
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
