Rails.application.routes.draw do
  root to: 'units#si'
  get 'units/si', to: 'units#si', as: 'units'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
