class LikesController < ApplicationController
  def create
    @user = current_user
    @post = Post.find(params[:format])
    @like = Like.new
    @user.likes.push(@like)
    @post.likes.push(@like)
    if @like.save
        flash.now[:success] = 'success to add like'
    else
      flash.now[:error] = 'fail to add like'
    end
    redirect_to action: 'index', controller: 'posts', user_id: @user.id
  end
end
