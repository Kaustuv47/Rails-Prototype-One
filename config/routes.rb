Rails.application.routes.draw do
  get 'pages/homepage'
  get 'pages/compatibles'
  resources :rams
  resources :motherboards
  root("pages#homepage")
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
