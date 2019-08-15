Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'endpoint', to: 'application#endpoint'
  get 'ingredients', to: 'application#ingredients'
  post 'orders', to: 'application#create_order'
  get 'orders', to: 'application#orders'
end
