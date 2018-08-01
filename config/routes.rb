Rails.application.routes.draw do
  resources :products
  resources :reviews
    root 'reviews#index'

end
