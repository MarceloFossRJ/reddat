Rails.application.routes.draw do

  root to: "links#index"

#   get 'links/index'
  resources :links


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
