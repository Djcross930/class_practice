Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/students" => "students#index"
  get "/students/:id" => "students#show"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/students" => "students#create"
end
