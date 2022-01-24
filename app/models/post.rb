class Post < ApplicationRecord
  belongs_to :users
  has_many :comments
  has_many :likes
  def update_post_count
    users.increment!(:posts_counter)
  end

  def five_recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end
