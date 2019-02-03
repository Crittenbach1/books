Rails.application.routes.draw do
  get 'images/index'
  get 'images/new'
  get 'images/show'
  post 'images/create'
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
