Rails.application.routes.draw do
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :places, only: [:index, :show] do
    # resources :users, only: [:new, :create]
    resources :bookings, only: [:show, :new] 
  end

  resource :profile

  namespace :profile do
    resources :places, only: [:new, :index]
    resources :bookings, only: [:index]
  end
end

# /places/ index
# /places/:id show
# /places/:id/bookings/new
# /places/:id/bookings/:id
# /profile/places/new
# /profile
# /profile/places/
