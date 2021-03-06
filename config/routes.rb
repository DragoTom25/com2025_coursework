Rails.application.routes.draw do
  get 'home/Bookings'
  resources :dis_parks
  resources :cars
  devise_for :users
  root 'home#home'            # Makes the home page the default page the user goes on when typing in localhost:3000
  get 'contact',to:'home#contact'
  post 'request_contact', to: 'home#request_contact'
  get 'about',to: 'home#about'
  get 'Bookings', to: 'home#Bookings'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
