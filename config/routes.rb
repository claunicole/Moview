Rails.application.routes.draw do
  
  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
  end

  get '/movies', to: 'movies#index'
  get 'movies/new'
  get 'movies/:id', to: 'movies#show', as: 'show_movie'
  get 'movies/:id/edit', to: 'movies#edit', as: 'edit_movie'

  post 'movies', to: 'movies#create'
  patch 'movies/:id', to: 'movies#update', as: 'movie'

  delete 'movies/:id', to: 'movies#destroy', as: 'delete_movie'

  
  get 'home/index'
  
 root 'movies#index'

end
