class UsersController < ApplicationController

  def create
    @user = User.create!
  end

  def show
    @user = User.find(params[:id])
    @profile = @user.profile
  end
end
