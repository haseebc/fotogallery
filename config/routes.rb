Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end

  get 'articles/index'

  resources :articles

  root 'articles#index'
end
# this routing file needs more work 26/03/2020