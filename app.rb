require 'sinatra/base'
require './lib/chitter.rb'

class Chitter < Sinatra::Base

  # enable :sessions

  get '/' do

    erb :chitters
  end

end
