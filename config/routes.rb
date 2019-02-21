Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :games do
    resources :adventures
    resources :maps
    resources :materials
    resources :stat_effects 
  end

  root 'users#index'
  post '/users/new' => 'users#create'
  resources :users

  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'login' => 'sessions#destroy'

  post 'games/:id/maps/new' => 'maps#create'
end
