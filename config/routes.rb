Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end

  get 'articles/index'

  resources :articles

  root 'articles#index'


  resources :articles do
    resources :photos do
    match '/remove', to: 'articles#remove', via: 'delete'
    end
  end

end
# this routing file needs more work 26/03/2020