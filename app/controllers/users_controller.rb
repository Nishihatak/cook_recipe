class UsersController < ApplicationController
  
  def show
    user = User.find(params[:id])
    @user = user
    @dishes = user.dishes.page(params[:page]).per(5).order("created_at DESC")
  end
end
