Rails.application.routes.draw do
  resources :d_parkings
  resources :disableds
  resources :cars
  devise_for :users
  root 'home#home'
  get 'contact',to:'home#contact'
  post 'request_contact', to: 'home#request_contact'
  get 'about',to: 'home#about'
  get 'booking', to: 'home#booking'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
