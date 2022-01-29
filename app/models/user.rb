class User < ApplicationRecord
  validates :name, presence: true
  validates :postsCounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  has_many :posts
  has_many :comments
  has_many :likes

  def first_three
    posts.order(created_at: :desc).limit(3)
  end
end
