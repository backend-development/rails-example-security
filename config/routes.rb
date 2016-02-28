Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  get 'static_pages/help'

  resources :articles

  resources :sessions, only: [:new, :create, :destroy]
  get 'log_in'  => 'sessions#new',     as: 'log_in'
  get 'log_out' => 'sessions#destroy', as: 'log_out'

  resources :users
  get 'sign_up' => 'users#new', as: 'sign_up'

  root to: 'static_pages#root'

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
