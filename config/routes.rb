Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'landings#home'
  get '/signup' => 'users#new'
  post 'signup' => 'users#create'
  get '/teams' => 'teams#new'
  post 'teams' => 'teams#create'
  get '/team_members' => 'team_members#index'
  post 'team_members' => 'team_members#create'
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/projects' => 'projects#new'
  post 'projects' => 'projects#create'
end
