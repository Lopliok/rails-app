Rails.application.routes.draw do
  devise_for :users
  get 'buildings/index'


 #get 'buildings/index'



  resources :buildings do
    resources :rooms, only: [:new, :create, :edit, :update, :destroy]
    resources :lessons, only: [:new, :create, :edit, :update, :destroy]
  end



  #root 'buildings#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
