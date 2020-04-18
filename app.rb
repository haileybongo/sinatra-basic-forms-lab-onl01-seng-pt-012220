require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :index
  end
  
  get '/create_puppy'
    name = params[:name]
    breed = params[:breed]
    age = params[:age]
    
    @new_puppy = Puppy.new(name, breed, age)
    erb :create_puppy
  end

end
