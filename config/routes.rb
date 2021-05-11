Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: "/gq", graphql_path: "/graphql" if Rails.env.development?
  post "/graphql", to: "graphql#execute"
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
