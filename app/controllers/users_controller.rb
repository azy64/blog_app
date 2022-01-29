# class for User entity
class UsersController < ApplicationController
  def index
    @users = User.first(5)
  end

  def show
    @user = current_user
  end
end
