Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end

  get 'articles/index'

  resources :articles

  root 'articles#index'
end