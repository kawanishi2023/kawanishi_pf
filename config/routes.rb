Rails.application.routes.draw do
  
  root to: "homes#top"
  get 'homes/about'
  
  # devise_for :admins
  # devise_for :users
  
  # 顧客用
  # URL /users/sign_in ...
  devise_for :users,skip: [:passwords], controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'
  }

  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
  }
  
  
  namespace :admin do
    get 'admins/index'
    get 'admins/withdrawal'
    get 'admins/confirm'
  end

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

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
