AuthenticationTest::Application.routes.draw do

  get "sessions/new"

  get '/login', :to => 'sessions#new'

  get '/registration', :to => 'users#new' 
  resources :users

  root :to => 'static_pages#home'
end
