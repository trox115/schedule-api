Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get '/content', to: 'content#index'
  get '/schedules', to: 'content#schedule'
  # resources :checkout, only: [:create]
  post "checkout/create", to: "checkout#create"
  resources :webhooks, only: [:create]
end
