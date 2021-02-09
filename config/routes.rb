Rails.application.routes.draw do
  root "stocks#index"

  get "/stocks", to: "stocks#index"
  get "/add_product", to: "stocks#add_product"
  post "/add_product", to: "stocks#create_product"
  get "/add_order", to: "stocks#add_order"
  post "/add_order", to: "stocks#create_order"
  get "/add_transfer", to: "stocks#add_transfer"
  post "/add_transfer", to: "stocks#create_transfer"

  get "/destroy_all", to: "stocks#destroy_all"
  get "/load_demo", to: "stocks#load_demo"
  #get 'stocks/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
