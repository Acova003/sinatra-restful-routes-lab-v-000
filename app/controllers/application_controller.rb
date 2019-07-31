class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
  
  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end 

  get '/' do
    erb :new
  end 
  
  get '/recipes' do 
    erb :index
  end 
  
  get '/recipes/:id' do
    @recipe = Recipe.find_by_id(params[:id]) #id doesn't have to be specified 
    erb :show
  end 
  
  get '/recipes/:id/edit' do 
    erb :edit
  end 
  
  get '/recipes/new' do 
    erb :new
  end 
  #patch '/recipes/:id/edit' do 
   # erb 
  #end 
end
