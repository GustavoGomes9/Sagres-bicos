Rails.application.routes.draw do
  resources :clientes
  resources :pedidos
  resources :bicos
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pedidos#index'
end
