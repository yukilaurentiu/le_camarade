Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :events
  resources :users do
    resources :chatroom
  end
  resources :profiles do
    resources :profiles, only: :show
  end
  get '/profiles/index', to: 'profiles#index', as: :index_path
end
