Rails.application.routes.draw do
  resources :plays
  root "plays#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
