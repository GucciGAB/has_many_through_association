Rails.application.routes.draw do
  root "appointments#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :physicians
  resources :patients
  resources :appointments
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  

  # Render dynamic PWA files from app/views/pwa/*
  

  # Defines the root path route ("/")
  # root "posts#index"
end
