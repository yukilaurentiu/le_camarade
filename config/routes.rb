Rails.application.routes.draw do
  resources :profiles
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: "profiles#index"
  # root to: "users#index"

  resources :events
  resources :users do
    resources :profiles, only: [:index, :show, :edit, :update]
  end
  # get 'profiles', to: 'profiles#index', as: :index_path
  # get "profiles/:id", to: "profiles#show", as: :show_path
end
