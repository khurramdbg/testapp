Rails.application.routes.draw do
  root 'grayscale#index'
  get 'customer', to: 'customer#index', as: 'customer_home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
