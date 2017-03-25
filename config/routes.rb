Rails.application.routes.draw do
  resources :orders
  resources :cup_add_ons
  resources :cups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
