Rails.application.routes.draw do
  get 'static_pages/help'

  resources :articles

  root to: 'static_pages#root'

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
