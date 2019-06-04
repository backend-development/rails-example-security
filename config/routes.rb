Rails.application.routes.draw do
  get 'static_pages/help'
  resources :articles
  resources :users
  get 'sign_up' => 'users#new', as: 'sign_up'  

  resources :sessions, only: [:new, :create, :destroy]
  get 'log_in'  => 'sessions#new',     as: 'log_in'
  get 'log_out' => 'sessions#destroy', as: 'log_out'

  root to: 'articles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
