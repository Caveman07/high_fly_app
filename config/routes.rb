Rails.application.routes.draw do
  #home
  root :to => "flights#index"

  resources :flights, only: [:index]
  resources :bookings, only: [:new, :create, :show]
end
