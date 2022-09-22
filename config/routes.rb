Rails.application.routes.draw do
  root 'main#select'
  post 'main/test'
  get 'main/result'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
