Rails.application.routes.draw do
  
  root to: "homes#top"
  get '/about' => 'homes#about'
  
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
  
  scope module: :user do
    resources :users, only: [:show, :edit, :update]
    resources :songs, only: [:new, :create, :edit, :update, :show, :index, :destroy]
    resources :opinions, only: [:new, :create]
  end
  
  scope module: :admin do
    get 'admins/:id/confirm' => 'admins#confirm', as: 'confirm'
    patch 'admins/:id/withdrawal' => 'admins#withdrawal', as: 'withdrawal'
    resources :admins, only: [:index]
    resources :genres, only: [:new, :create, :index, :destroy]
    resources :opinions, only: [:index]
  end
  
  
  # namespace :user do
  #   get 'users/show'
  #   get 'users/edit'
  #   get 'users/update'
  # end
  
  # namespace :user do
  #   get 'songs/new'
  #   get 'songs/create'
  #   get 'songs/edit'
  #   get 'songs/update'
  #   get 'songs/show'
  #   get 'songs/index'
  #   get 'songs/destroy'
  # end

  # namespace :user do
  #   get 'opinions/new'
  #   get 'opinions/create'
  # end
  
    # namespace :admin do
  #   get 'admins/index'
  #   get 'admins/withdrawal'
  #   get 'admins/confirm'
  # end

  # namespace :admin do
  #   get 'genres/index'
  #   get 'genres/new'
  #   get 'genres/create'
  #   get 'genres/destroy'
  # end

  # namespace :admin do
  #   get 'opinions/index'
  # end
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
