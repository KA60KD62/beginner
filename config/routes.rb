Rails.application.routes.draw do
  root 'begens#index'
  resources :begens
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
