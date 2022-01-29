# class for User entity
class UsersController < ApplicationController
  def index
    # user = User.new(name: 'Azaria', photo: 'user/photo/pic.jpg',
    #                bio: 'je suis un cultivateur fin stratege...')
    # user.save
    @users = User.first(5)
  end

  def show
    # @user = User.includes(:posts).find(params[:id])
    @user = current_user
  end
end
