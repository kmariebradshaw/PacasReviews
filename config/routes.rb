Rails.application.routes.draw do
  get 'welcome/index'
  resources :products
  resources :questions
  resources :reviews
  resources :answers
    root 'welcome#index'

end
