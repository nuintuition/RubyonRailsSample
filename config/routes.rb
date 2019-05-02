Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  #to is key "home#first" is value
  # like .js get(v1,v2)
  get "first", to:"home#first"
  get "second", to:"home#second"
  get "posts/:id", to:"home#show_post"
end
