Rails.application.routes.draw do

  get 'gallery/index'
  get 'gallery/show'
  get 'home/index'

  get '/' => 'home#index'
  devise_for :users

  resources :achievements
  resources :books

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
