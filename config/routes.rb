# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users', to: 'users#index', as: 'users'
  get '/posts/:post_id/comment/new', to: 'comments#new', as: 'user_post_comment'
  get '/posts/new', to: 'posts#new', as: 'new_post'
  post '/posts/create', to: 'posts#create', as: 'create_post'
  post '/comments/create', to: 'comments#create', as: 'create_comment'
  get '/likes/create(.:format)', to: 'likes#create', as: 'create_like'
  get '/users/:user_id/posts(.:format)', to: 'posts#index', as: 'user_posts'
  get '/users/:user_id/posts/:id(.:format)', to: 'posts#show', as: 'user_post'
  

  # Defines the root path route ("/")
  # root "articles#index"
end
