Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :macroservices, only: [:index]
  resources :categorys, only:[:index]
  # Defines the root path route ("/")
  # root "articles#index"
end
