Rails.application.routes.draw do
  get 'pages/home'
  root :to => 'pages#home'
  resources :activities
  resources :commitments
  resources :likes
  resources :users, :only => [:index, :new, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
