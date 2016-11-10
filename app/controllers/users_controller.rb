class UsersController < ApplicationController
  def show
  	@user = User.find_by(username: params[:username])
  	@tweets = @user.tweets

  	@user = User.find_by(username: params[:username])
  	@recipes = @user.recipes
  end
end
