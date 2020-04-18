require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :index
  end
  
  get '/create_puppy'
    name = params[:name]
    age = params[:age]
    breed = params[:breed]
        
    @new_puppy = Puppy.new(name, age, breed)
    
    erb :create_puppy
  end

end
