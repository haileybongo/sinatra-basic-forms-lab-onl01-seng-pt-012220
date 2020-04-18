require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :index
  end
  
  get '/create_puppy'
    name = params[:name]
    erb :create_puppy
  end

end
