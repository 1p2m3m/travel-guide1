Rails.application.routes.draw do
  root to: 'locations#home'
  # get '/locations/show', to: "locations#show", as: "locations"

  resources :locations
  # index
  #get "/locations", to: "locations#index", as: "locations"

  #new
  #get "/locations/new", to: "locations#new", as: "new_location"

  #create
  #post "/locations", to: "locations#create"

  #show
  #get "/locations/:id", to: "locations#show", as: "location"

  #edit
  #get "/locations/:id/edit", to: "locations#edit", as: "edit_location"

  #update
  #patch "/locations/:id", to: "locations#update"

  #destroy
  #delete "/locations/:id", to: "locations#destroy"
end
