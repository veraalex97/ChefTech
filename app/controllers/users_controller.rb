class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_pictures = @user.pictures
  end

end
