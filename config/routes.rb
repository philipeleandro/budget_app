Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :macroservices, only: [:index,:create]
  resources :categorys, only:[:index]
  resources :services, only:[:index]
  # Defines the root path route ("/")
  # root "articles#index"
end
