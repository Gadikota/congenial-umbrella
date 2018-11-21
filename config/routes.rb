Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#show"
  resources :products do
    resources :images, controller: 'products/images'
  end

  get '/login', controller: 'products', action: 'show'
  post '/login', controller: 'products', action: 'create'
end
