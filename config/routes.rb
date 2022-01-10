Rails.application.routes.draw do
  get '/about', to: 'home#index'
  root "home#index"
end
