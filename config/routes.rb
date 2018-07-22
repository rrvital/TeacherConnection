Rails.application.routes.draw do
  resources :forums
  devise_for :users

  root to: 'pages#index'

end
