Rails.application.routes.draw do
  resources :apartaments
  resources :gas
  resources :account_services
  resources :expenditures
  resources :condo_accounts
  resources :accounts
  resources :cashes
  resources :people
  devise_for :users
  mount RailsAdmin::Engine => '/', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
