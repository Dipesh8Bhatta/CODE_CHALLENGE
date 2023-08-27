Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'interest_calculator#index'

  post 'calculate_total', to: 'interest_calculator#calculate', as:'calculate_total'
end
