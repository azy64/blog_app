# class for User entity
class UsersController < ApplicationController
  def index
    @users = User.first(5)
  end

  def show; end
end
