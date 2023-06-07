Rails.application.routes.draw do
  namespace :admin do
    get 'opinions/index'
  end
  namespace :user do
    get 'opinions/new'
    get 'opinions/create'
  end
  namespace :admin do
    get 'genres/index'
    get 'genres/new'
    get 'genres/create'
    get 'genres/destroy'
  end
  namespace :admin do
    get 'admins/index'
    get 'admins/update'
    get 'admins/withdrawal'
  end
  namespace :user do
    get 'songs/new'
    get 'songs/create'
    get 'songs/edit'
    get 'songs/update'
    get 'songs/show'
    get 'songs/index'
    get 'songs/destroy'
  end
  namespace :user do
    get 'users/show'
    get 'users/edit'
    get 'users/update'
  end
  root to: "homes#top"
  get 'homes/about'
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
