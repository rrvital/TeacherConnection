Rails.application.routes.draw do
  get 'home/index'
  resources :comments
  devise_for :users
  resources :forums do
    member do
     put "like", action: :upvote
     put "dislike", action: :downvote
    end
    resources :comments
  end
  
  root to: 'pages#index'
end