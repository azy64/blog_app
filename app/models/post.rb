class Post < ApplicationRecord
  belongs_to :user # , foreign_key: 'user_id'
  has_many :comments
  has_many :likes
  def update_post_count
    User.increment!(:posts_counter)
  end

  def five_recent_comments
    Comment.order(created_at: :desc).limit(5)
  end
end
