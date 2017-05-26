Rails.application.routes.draw do
  devise_for :users

  resources :tickets

  resources :searches

  namespace :admin do
    resources :trains do
      resources :cars
    end

    resources :railway_stations do
      patch :update_station_position, on: :member
      patch :update_time, on: :member
    end

    resources :routes
  end

  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
