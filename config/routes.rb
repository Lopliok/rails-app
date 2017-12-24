Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :admins, path: 'admin', skip: :registrations
=======
  devise_for :users
>>>>>>> 58ad4caac7e427339e88216d1dc3c9c3f1924b79
  get 'buildings/index'


 #get 'buildings/index'

  namespace :admin do
    resources :buildings
    resources :rooms
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
