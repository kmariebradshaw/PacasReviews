Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: 'welcome#index', as: :authenticated_root
    resources :products
    resources :questions
    resources :reviews
    resources :answers
    resources :responses
  end
  resources :reviews, only: [:new, :show, :index, :create]
  root to: redirect('/users/sign_in')
end
