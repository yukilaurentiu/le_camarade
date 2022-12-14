Rails.application.routes.draw do
  root to: "pages#home"
  resources :profiles

  #devise_for :users, controller: { sessions: 'users/sessions' }
  # root to: "profiles#index"

  devise_for :users
  # root to: "users#index"

  resources :events do
    resources :event_bookmarks, only: :create
  end
  resources :compare_users, only: :index
  resources :chatrooms do
    resources :messages, only: :create
  end

  # get 'profiles', to: 'profiles#index', as: :index_path
  # get "profiles/:id", to: "profiles#show", as: :show_path
end
