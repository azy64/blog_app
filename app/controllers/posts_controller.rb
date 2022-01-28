# class for Posts entity
class PostsController < ApplicationController
  def index
    @user = current_user
    @posts = @user.posts
  end

  def show; end

  def new
    @post = Post.new
    # render :new, locals: { post: post }
  end

  def create
    @user = current_user
    # @post = current_user.posts.create(title: params[:tile], text: params[:text])
    @post = Post.new(params.require(:post).permit(:title, :text))
    # post.users = user
    # post.users_id = user.id
    @user.posts.push(@post)
    if @post.save
      flash[:success] = 'Created New Post succesfully'
      redirect_to action: 'show', controller: 'users', id: @user.id
    else
      flash.now[:fail] = 'Failed to Create New Post'
      render :new, locals: { post: @post }
    end
  end
end
