Rails.application.routes.draw do
     
  get 'welcome/index'
  root 'welcome#index'
  

  get 'pages/index'
  get 'pages/home'
  get 'pages/profile'
  
  resources :temperatures
  
  resources :temperatures do
  resources :comments
  end
  resources :todos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
