Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "credit_cards#index"

  # Standard CRUD routes
  # get "/credit_cards", to: "credit_cards#index"
  # get "/credit_cards/:id", to: "credit_cards#show"

  # get "/credit_cards/new", to: "credit_cards#new"
  # post "/credit_cards", to: "credit_cards#create"

  # get "/credit_cards/:id/edit", to: "credit_cards#edit"
  # patch "credit_cards/:id", to: "credit_cards#update"
  # put "credit_cards/:id", to: "credit_cards#update"

  # delete "credit_cards/:id", to: "credit_cards#destroy"
  resources :credit_cards
end
