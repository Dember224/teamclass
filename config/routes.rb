Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'landings#home'
  resources :users
  get '/signups' => 'users#new'
  post 'signups' => 'users#create'
  get '/teams' => 'teams#new'
  post 'teams' => 'teams#create'
  get '/team_members' => 'team_members#index'
  post 'team_members' => 'team_members#create'
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/logout' => 'sessions#destroy'
  get '/projects' => 'projects#new'
  post 'projects' => 'projects#create'
  get 'our_project' => 'projects#index'
  get '/assignments' => 'assignments#new'
  post 'assignments' => 'assignments#create'
  get '/materials' => 'materials#new'
  post 'materials' => 'materials#create'
end
