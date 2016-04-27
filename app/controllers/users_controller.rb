class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_pictures = (@user.pictures)
  end

  def index
    @users = User.all
  end


  def avatar
    @user_avatar = User.avatar
  end

end
