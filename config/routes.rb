Rails.application.routes.draw do
  get '/user_administration', to: 'user_administration#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'

  resources :translations
  resources :words
  resources :languages
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
