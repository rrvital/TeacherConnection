Rails.application.routes.draw do
  resources :events
  devise_for :users, controllers: { registrations: 'user/registrations' }  
  
  devise_scope :user do 
    authenticated :user do 
      root 'forums#index'
    end
    unauthenticated do 
      root to: 'pages#index'
    end
  end

  
  resources :forums do
    member do
     put "like", action: :upvote
     put "dislike", action: :downvote
    end
    resources :comments, only: [:create, :destroy]
  end
end