Rails.application.routes.draw do
  root 'welcome#index'
  resources :affiliates
  resources :offers
  resources :tiers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
