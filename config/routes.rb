Rails.application.routes.draw do
  get 'welcome/index'
  resources :products
  resources :questions
  resources :reviews
  resources :answers
  resources :responses
    root 'welcome#index'

end
