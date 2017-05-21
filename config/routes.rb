Rails.application.routes.draw do
  resources :trains do
    resources :cars
  end
  resources :railway_stations do
    patch :update_station_position, on: :member
    patch :update_arrival_time, on: :member
    patch :update_departure_time, on: :member
  end
  resources :routes
  resources :searches
  resources :tickets

  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
