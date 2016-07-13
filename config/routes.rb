Rails.application.routes.draw do
  resources :trends
  resources :cities

  root 'cities#index'
end
