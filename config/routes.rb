AuthenticationTest::Application.routes.draw do

  get '/registration', :to => 'users#new' 

  root :to => 'welcome#index'
end
