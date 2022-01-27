# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/users/:id(.:format)', to: 'users#show', as: 'user'
  get '/users/(.:format)', to: 'users#index', as: 'users'
  get '/users/:user_id/posts(.:format)', to: 'posts#index', as: 'user_posts'
  get '/users/:user_id/posts/:id(.:format)', to: 'posts#show', as: 'user_post'
  post '/users/:user_id/posts/new', to: 'post#new', as: 'new_post'

  # Defines the root path route ("/")
  # root "articles#index"
end
