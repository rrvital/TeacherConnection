Rails.application.routes.draw do
  get 'forums/index'
  
  resources :forums
  devise_for :users
  
  root to: 'pages#index'

end
