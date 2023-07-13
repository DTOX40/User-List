Rails.application.routes.draw do
  get '/users', to: 'users#index'
  root 'users#index'
end
