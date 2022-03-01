Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :bets, only: %i[index show new create update edit] do
    resources :bettings, only: %i[create update]
    member do
      get :confirmation
    end
  end

  # get '/bets/:id/confirmation', to: 'bets#confirmation'

  resource :profile, only: [] do
    resources :betting, only: [:index] do
      collection do
        get :ongoing
        get :finished
        get :published
      end
    end
  end

  # get '/profile/bettings/ongoing', to: 'bettings#ongoing'
  # get '/profile/bettings/finished', to: 'bettings#finished'
  # get '/profile/bettings/published', to: 'bets#published'
end
