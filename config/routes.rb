Rails.application.routes.draw do
  devise_for :users
  root to: "home#show"
  resources :available_times
end
