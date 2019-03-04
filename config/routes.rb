Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'landings#home'
  resources :users
  get '/signup' => 'users#new'
  post 'signup' => 'users#create'
  get 'users' => 'teams#index'
  get '/teams' => 'teams#index'
  post '/teams' => 'teams#index'
end
