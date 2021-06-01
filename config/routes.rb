Rails.application.routes.draw do
  #mount GraphiQL::Rails::Engine, at: "/gq", graphql_path: "/graphql" if Rails.env.development?
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
  end
  post "/graphql", to: "graphql#execute"
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root '', to: 'home#index'
  #get 'products', to: 'products#index'
end
