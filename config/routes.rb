Rails.application.routes.draw do
  get 'buildings/index'


 # get 'buildings/index'

  resources :buildings do
    resources :rooms
  end

  root 'buildings#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
