Rails.application.routes.draw do
  get 'summary/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :medications
 
  root 'summary#index'
end

