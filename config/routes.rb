Rails.application.routes.draw do
  get 'postimages/top'
  devise_for :users
  get 'homes/about', as: 'about'
  get 'lists/new'
  get 'lists/index'
  get 'lists/show'
  get 'lists/edit'
  root to: "homes#top"
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:new, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
