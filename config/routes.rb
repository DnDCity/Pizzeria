Pizzeria::Application.routes.draw do
  resources :orders do
    resources :pizzas
  end

  resources :crust_types

  resources :sizes

  resources :toppings

  root to: "orders#new"

  devise_for :users
end
