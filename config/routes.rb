Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :bets, only: %i[index show] do
    resources :bettings, only: %i[create update]
  end

  get '/bets/:id/confirmation', to: 'bets#confirmation'

  resources :bettings, only: %i[index]

  get '/profile/bettings/ongoing', to: 'bettings#ongoing'
  get '/profile/bettings/finished', to: 'bettings#finished'
  get '/profile/bettings/published', to: 'bets#published'
end
