Rails.application.routes.draw do
  post 'facility/create'
  post 'facility/destroy'
  post 'facility/update'
  get 'facility/index'
  post 'user/create'
  post 'user/login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root
  root to: 'home#index'
end
