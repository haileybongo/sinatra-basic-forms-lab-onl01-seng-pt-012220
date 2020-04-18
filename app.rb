require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :index
  end
  
  get '/create_puppy' do 
  
    erb :create_puppy
  end
  
  post '/create_puppy' do 
    
    name = params[:name]
    age = params[:age]
    breed = params[:breed]
        
    @new_puppy = Puppy.new(name, age, breed)
    
    erb :display_puppy
  end

end
