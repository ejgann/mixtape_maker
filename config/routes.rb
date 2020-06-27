Rails.application.routes.draw do
  
  # signup
  get '/signup', to: 'users#new'
  

  # login


  # logout
  
  
  resources :users
  resources :songs
  resources :mixtapes


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
