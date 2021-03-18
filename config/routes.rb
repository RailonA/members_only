Rails.application.routes.draw do
  resources :posts

  devise_for :users, controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :posts, only: %i[new create index]
  # get "user", to: "user#index"

  root to: 'posts#index'
end
