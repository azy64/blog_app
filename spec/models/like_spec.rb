require 'rails_helper'

RSpec.describe Like, type: :model do
  it 'tests that Like model is created correctly' do
    like = Like.new
    like.build_user(name: 'Riley')
    like.build_post(text: '')
    expect(like).to be_valid
  end

  it 'updates a posts likes correctly' do
    user = User.new(name: 'Carrie', postsCounter: 0)
    # user.skip_confirmation!
    user2 = User.create!(name: 'Henry', postsCounter: 0)
    post = user2.posts.create!(title: 'Post1', text: 'This is a post', likesCounter: 0, commentsCounter: 0)
    post.likes.create!(user: user)
    post.likesCounter = post.likes.length
    # Like.update_likes_for(post)
    expect(post.likesCounter).to eql(1)
  end
end
