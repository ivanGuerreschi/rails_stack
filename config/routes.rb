Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/show'
  get 'home/index'

  resources :articles
  
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
