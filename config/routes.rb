require 'routes_constraints'

Rails.application.routes.draw do
  root "status#static"

  namespace :status do
    get :static
    get :production
    get :staging
    get :development
  end

  namespace :api do
    scope module: :v1, constraints: ApiVersionConstraint.new(version: "v1") do
      get 'product_items' => 'product_items#index'
      get 'product_items/:id' => 'product_items#show'
      post 'product_items' => 'product_items#create'
      put 'product_items/:id' => 'product_items#update'
      delete 'product_items/:id' => 'product_items#destroy'

      get 'products' => 'products#index'
      get 'products/:id' => 'products#show'
      post 'products' => 'products#create'
      put 'products/:id' => 'products#update'
      delete 'products/:id' => 'products#destroy'

      get 'brands' => 'brands#index'
      get 'brands/:id' => 'brands#show'
      post 'brands' => 'brands#create'
      put 'brands/:id' => 'brands#update'
      delete 'brands/:id' => 'brands#destroy'

      get 'categories' => 'categories#index'
      get 'categories/:id' => 'categories#show'
      post 'categories' => 'categories#create'
      put 'categories/:id' => 'categories#update'
      delete 'categories/:id' => 'categories#destroy'
    end
  end
end
