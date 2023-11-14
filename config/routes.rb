Rails.application.routes.draw do
  post 'login', to: 'sessions#create'
  resources :users, only: [:create]
  resources :todos
  resources :todo_lists
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
