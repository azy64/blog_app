class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :likes

  def first_three
    posts.order(created_at: :desc).limit(3)
  end
end
