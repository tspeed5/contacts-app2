Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
  #   get "/one_recipe_url" => "recipes#one_recipe_action"
  # end
# get all contacts
    get '/contacts' => 'contacts#index'
    get '/contacts/:id' => 'contacts#show'
    post '/contacts' => 'contacts#create'
    put '/contacts/:id' => 'contacts#update'
  end
end
