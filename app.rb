require 'sinatra/base'
require './lib/peeps.rb'
require 'pg'

class Chitter < Sinatra::Base

  enable :sessions

  get '/' do

    erb :chitters
  end

  get '/chitters' do
    @peeps = Peep.all

    erb :'chitters'
    
  @peeps = [
            "My second peep",
            "My peep of the day",
            "it's getting better"
           ]


end
  run! if app_file == $0
end
