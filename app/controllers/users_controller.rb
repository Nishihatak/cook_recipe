class UsersController < ApplicationController
  
  def show
   @user = User.find(params[:id])
   @dishes = Dish.includes(:user).order("created_at DESC")
  end
end
