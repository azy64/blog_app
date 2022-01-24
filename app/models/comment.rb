class Comment < ApplicationRecord
  belong_to :users
  belong_to :posts
  def update_comments_counter
    post.increment!(:comments_counter)
  end
end
