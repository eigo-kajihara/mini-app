Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  get '/tweet/:id' => 'tweets#destroy'
  resources :tweets, except: [:destory] 
  
  resources :users, only: [:show]
end