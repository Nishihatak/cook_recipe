class UsersController < ApplicationController
  
  def show
    user = User.find(params[:id])
    @user = user
    @dishes = user.dishes.order("created_at DESC")
  end
end
