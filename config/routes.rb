Rails.application.routes.draw do


  root 'home#top'
  get 'home/top'
  get 'home/mypage'
  get 'home/history'
  get 'customers/confirm'
  patch 'customers/withdraw'
  resource :customers, only: [:show, :edit, :update]
  
  get 'ivents/room'
  patch 'ivents/room' => 'ivents#post'
  resources :ivents, only: [:show, :index, :new, :create, :edit, :update]

 get 'participants' => 'participants#index'
 put 'participants' => 'participants#create'
 patch 'participants/leaf' => 'participants#leaf_update'
 patch 'participants/tool' => 'participants#tool_update'
 patch 'participants/entry' => 'participants#entry_update'

 put 'mails' => 'mails#create'
 put 'invited_customers' => 'invited_customers#create'
 put 'favorited_customers' => 'favorited_customers#create'

 devise_for :admin_users, ActiveAdmin::Devise.config
 ActiveAdmin.routes(self)
 devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
