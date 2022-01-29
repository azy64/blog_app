class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @id = params[:post_id]
  end

  def create
    id = params.require(:comment).permit(:post_id)
    post = Post.find(id[:post_id])
    comment = Comment.new(params.require(:comment).permit(:text))
    post.comments.push(comment)
    @user = current_user
    @user.comments.push(comment)
    if comment.save
      flash[:success] = 'Saved the comment succesfully'
      redirect_to action: 'show', controller: 'users', id: @user.id
    else
      flash.now[:fail] = 'Failed to Create New Comment'
      render :new, locals: { post: comment }
    end
  end
end
