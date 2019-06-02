Rails.application.routes.draw do
  resources :straps
  resources :guitar_picks
  resources :guitars
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
