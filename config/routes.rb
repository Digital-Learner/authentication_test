AuthenticationTest::Application.routes.draw do

  get '/registration', :to => 'users#new' 
  resources :users

  root :to => 'static_pages#home'
end
