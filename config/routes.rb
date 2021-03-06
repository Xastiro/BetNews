Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/workinprogress', to: 'pages#workinprogress'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :bets, only: %i[index show new create edit update] do
    resources :bettings do
      collection do
        post :yes
        post :no
      end
    end
    member do
      get :publication_confirmation
      get :closing
      patch :close
    end
  end

  # get '/bets/:id/confirmation', to: 'bets#confirmation'

  resource :profile, only: [:edit, :update] do
    resources :bettings, only: [:index]
    resources :bets, only: [] do
      collection do
        get :published
      end
    end
  end

  resources :users, only: [:index] do
    member do
      get :badge
    end
  end

  # get '/profile/bettings/ongoing', to: 'bettings#ongoing'
  # get '/profile/bettings/finished', to: 'bettings#finished'
  # get '/profile/bettings/published', to: 'bets#published'
end
