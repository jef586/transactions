# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :clients
  resources :transactions
  get 'clients/:id/transactions', to: 'clients#transactions_by_client'
  get 'clients/:id/balance', to: 'clients#client_balance'
end
