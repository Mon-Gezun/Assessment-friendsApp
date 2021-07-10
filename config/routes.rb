Rails.application.routes.draw do
  # get 'friends/index'
  resources :friends
  root to: 'friends#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
