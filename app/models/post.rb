class Post < ApplicationRecord
  validates :title, length: { maximum: 250 }, presence: true
  validates :likesCounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :commentsCounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  belongs_to :user
  has_many :comments
  has_many :likes
  def update_post_count
    User.increment!(:postsCounter)
  end

  def five_recent_comments
    Comment.order(created_at: :desc).limit(5)
  end
end
