Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :categories
  resources :posts do
    resources :comments
    resources :tags, only: [:new, :create]
  end
end
