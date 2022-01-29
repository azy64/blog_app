require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /posts' do
    before(:each) { get user_posts_path user_id: 1 }
    it 'should return correct response' do
      # get user_posts_path
     expect(response).to_not include('200')
    end
    #it 'should render the correct template' do
    #  expect(response).to render_template(:index)
    # end
    #it 'should have the text Posts' do
     # expect(response.body).to include('Number of posts')
    # end
  end
end
