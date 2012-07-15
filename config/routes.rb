Sgc::Application.routes.draw do

  resources :conta_recebers

  resources :pessoa_recebers

  resources :conta_pagars

  resources :pessoa_pagars

  root :to => "home#index"

  match 'auth/:provider/callback', :to => 'sessions#create'
  match 'auth/failure', :to => redirect('/')
  match 'signout', :to => 'sessions#destroy', :as => 'signout'
end
