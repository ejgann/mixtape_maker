Rails.application.routes.draw do
  root 'sessions#home'

  # signup
  get '/signup', to: 'users#new'

  # login
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  # logout
  delete '/logout', to: 'sessions#destroy'
  
  
  resources :mixtapes
  resources :users do
      resources :songs, only: [:new, :create, :index]
  end
  resources :songs do 
      resources :mixtapes, only: [:new, :create, :index]
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
