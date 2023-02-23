Rails.application.routes.draw do
  get 'postimages/top'
  devise_for :users
  get 'lists/new'
  get 'lists/index'
  get 'lists/show'
  get 'lists/edit'
  root to: "homes#top"
  resources :post_images, only: [:new, :create, :index, :show]
  get 'homes/about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end