Rails.application.routes.draw do
  get 'home/index'

  resources :comments
  devise_scope :user do 
    put "/users" => "user/registrations#update"
    post "/users" => "user/registrations#create"
  end
  devise_for :users
  resources :forums do
    member do
     put "like", action: :upvote
     put "dislike", action: :downvote
    end
    resources :comments


get '/signup',  to: 'users#new'
post '/signup',  to: 'users#create'
get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'
get '/create-event',  to: 'events#new'
post '/create-event',  to: 'events#create'
patch '/create-event',  to: 'events#create'

resources :users do
  resources :comments
  member do
    get :attending
  end
end

resources :events do
  resources :comments
  member do
    get :attendees
  end
end

resources :users, only: [:show, :edit]
resources :events
resources :attends, only: [:create, :destroy]
resources :comments, only: [:create, :destroy]
end

root to: 'pages#index'
end
