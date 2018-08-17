Rails.application.routes.draw do
  get 'welcome/index'
  resources :products
  resources :questions
  resources :reviews
    root 'welcome#index'

end
