Rails.application.routes.draw do
  resources :user_runs
  resources :user_circles
  resources :circles
  resources :runs
  resources :users
  post 'login', to: 'users#login'
  get '/profile', to: 'users#profile'
end
