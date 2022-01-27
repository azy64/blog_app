# class for Posts entity
class PostsController < ApplicationController
  def index; end

  def show; end

  def new
    post = Posts.new
    render :new, locals: { post: post }
  end

  def create
    post = current_user.posts.new(post_params)
    authorize! :create, post
    @user = current_user
    @posts = @user.posts
    if post.save
      flash[:success] = 'Created New Post succesfully'
      redirect_to user_posts_url
    else
      flash.now[:fail] = 'Failed to Create New Post'
      render :new, locals: { post: post }
    end
  end
end
