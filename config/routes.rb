Rails.application.routes.draw do
  root to: 'random_shaffules#index'
  resources :random_shaffules
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
