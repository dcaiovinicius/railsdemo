Rails.application.routes.draw do
  get '/about', to: 'home#about'
  root "home#index"

  resources :friends
end
