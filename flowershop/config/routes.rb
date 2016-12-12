Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  get 'pages/features'

  get 'pages/contact'

  get 'posts/index'

  # get 'posts/index'
  resources :posts

  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
