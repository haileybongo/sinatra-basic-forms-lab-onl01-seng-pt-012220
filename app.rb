require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :index
  end
  
  get '/new' do 
  
    erb :create_puppy
  end
  
  post '/puppy' do 
    
    name = params[:name]
    age = params[:age]
    breed = params[:breed]
     binding.pry  
    @new_puppy = Puppy.new(name, age, breed)
    
    erb :display_puppy
  end

end
