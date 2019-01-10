

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
  
<<<<<<< HEAD
  get '/recipes/new' do
    erb :new 
=======
  get '/' do
    erb :index
>>>>>>> 727615624736c9887d169c7f174777f7457d3a6c
  end
  
  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end
  
<<<<<<< HEAD
=======
  get '/recipes/new' do
    erb :new 
  end
  
>>>>>>> 727615624736c9887d169c7f174777f7457d3a6c
  post '/recipes' do
    @recipe = Recipe.create(params)
    redirect "/recipes/#{@recipe.id}"
  end
  
  get '/recipes/:id' do
<<<<<<< HEAD
    @recipe = Recipe.find_by_id(params[:id])
    erb :show
  end
  
  delete '/recipes/:id' do 
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.delete
    redirect '/recipes'
  end
  
  get '/recipes/:id/edit' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :edit
  end
  
  patch '/recipes/:id' do
    @recipe = Recipe.find_by_id(params[:id])
    @recipe.name = params[:name]
    @recipe.ingredients = params[:ingredients]
    @recipe.cook_time = params[:cook_time]
    @recipe.save
    redirect to "/recipes/#{@recipe.id}"
  end
=======
    @recipe = Recipes.find_by_id(params[:id])
    erb :show
  end
  
  
>>>>>>> 727615624736c9887d169c7f174777f7457d3a6c
end
