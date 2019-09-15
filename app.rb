require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    @input = params[:user_phrase]
    @analyzed = PigLatinizer.new
    
    erb :piglatinize
  end
end