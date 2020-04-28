Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  post '/login', to: 'auth#create'
  get "/chatapp", to: "users#chatapp"
  resources :chatrooms
  resources :friendships
end