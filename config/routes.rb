Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "products#index"
  #to is key "home#first" is value
  # like .js get(v1,v2)

  resources :products
end
