require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /users' do
    it 'should return 200 response' do
      get users_path
      expect(response).to have_http_status(200)
    end
    # it '#user-index should render index template correctly template ' do
    # get users_index_path
    # expect(response).to render_template(:index)
    # end

    it 'should include Number of posts' do
      get users_path
      expect(response.body).to include('Number of posts')
    end
  end
  describe 'GET #show' do
    user = User.create('name' => 'Azaria', 'bio' => 'The Best', 'photo' => '', 'postsCounter' => 0)
    before(:each) { get user_path id: user.id }
    it 'should render the show template ' do
      expect(response).to render_template(:show)
    end

    # it 'should include the word Bio' do
    # expect(response).to include('Bio')
    # end
  end
end
