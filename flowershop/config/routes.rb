Rails.application.routes.draw do
  get 'welcome/index'

  get 'pages/home'

  get 'pages/about'

  get 'pages/features'

  get 'pages/contact'

  get 'posts/index'

  # get 'posts/:id', to: 'posts#show', as: 'post'

  # get 'posts/index'
  resources :posts

  resources :articles

  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
