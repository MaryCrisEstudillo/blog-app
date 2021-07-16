Rails.application.routes.draw do
  resources :my_blogs
  root 'my_blogs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
