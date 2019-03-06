Rails.application.routes.draw do
  namespace :api do

  post "/sessions" => "sessions#create"

  get "/users" => "users#index"
  get "/users" => "users#new"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  get "/users/:id/edit" => "users#edit"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  get "/images" => "images#index"
  get "/images" => "images#new"
  post "/images" => "images#create"
  get "/images/:id" => "images#show"
  get "/images/:id/edit" => "images#edit"
  patch "/images/:id" => "images#update"
  delete "/images/:id" => "images#destroy"

  get "/categories" => "categories#index"
  get "/categories" => "categories#new"
  post "/categories" => "categories#create"
  get "/categories/:id" => "categories#show"
  get "/categories/:id/edit" => "categories#edit"
  patch "/categories/:id" => "categories#update"
  delete "/categories/:id" => "categories#destroy"

  get "/products" => "products#index"
  get "/products" => "products#new"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  get "/products/:id/edit" => "products#edit"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  get "/conversations" => "conversations#index"
  get "/conversations" => "conversations#new"
  post "/conversations" => "conversations#create"
  get "/conversations/:id" => "conversations#show"
  get "/conversations/:id/edit" => "conversations#edit"
  patch "/conversations/:id" => "conversations#update"
  delete "/conversations/:id" => "conversations#destroy"

  get "/messages" => "messages#index"
  get "/messages" => "messages#new"
  post "/messages" => "messages#create"
  get "/messages/:id" => "messages#show"
  get "/messages/:id/edit" => "messages#edit"
  patch "/messages/:id" => "messages#update"
  delete "/messages/:id" => "messages#destroy"
  end
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
end
