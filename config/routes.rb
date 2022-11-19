Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  namespace :api do
    namespace :v1 do
      get '/content', to: 'content#index'
      get '/schedules', to: 'content#schedule'
      post "checkout/create", to: "checkout#create"
      resources :webhooks, only: [:create]
    end

    namespace :v2 do
      get '/content', to: 'content#index'
      get '/schedules', to: 'content#schedule'
      post "checkout/create", to: "checkout#create"
      resources :webhooks, only: [:create]
    end
  end

  get '/content', to: 'test#index'
  
end
