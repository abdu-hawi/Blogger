Rails.application.routes.draw do
  get 'controls/login'
  root 'articals#index'
  resources :articals do
  	resources :comments
  end
  resources :users
  match ':controller(/:action(:/id))',:via=>[:get,:post] 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
