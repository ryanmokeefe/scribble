Rails.application.routes.draw do
  get 'images/index'

  get 'images/show'

  get 'images/new'

  get 'images/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "posts#index"

  resources :posts do
    resources :comments
  end



end
