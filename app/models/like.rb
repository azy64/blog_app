class Like < ApplicationRecord
  belong_to :users
  belong_to :posts
  def update_likes
    post.increment!(:likes_counter)
  end
end
