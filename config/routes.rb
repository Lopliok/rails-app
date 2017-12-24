Rails.application.routes.draw do

  devise_for :admins, path: 'admin', skip: :registrations

  devise_for :users

  get 'buildings/index'


 #get 'buildings/index'

  namespace :admin do
    resources :buildings do
      resources :rooms
    end
    resources :lessons
    resources :courses
  end

  get 'admin' => 'admin/building#index'



  resources :buildings do
    resources :rooms, only: [:index, :new, :create, :edit, :update, :destroy, :show] do

      resources :lessons
    end

  end





  #root 'buildings#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
