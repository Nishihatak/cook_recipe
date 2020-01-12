class UsersController < ApplicationController
  
  def show
   @user = User.find(params[:id])
   @dishes = Dish.includes(:user)
  end
end
