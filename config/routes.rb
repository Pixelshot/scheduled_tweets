Rails.application.routes.draw do
  
  root to: "main#index"
  get "about", to: "about#index"
  # With Rails, the same URL can handle different kind of requests
  # Rails calls them VERB(get, post, patch, put, delete, etc)
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  
  delete "logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
