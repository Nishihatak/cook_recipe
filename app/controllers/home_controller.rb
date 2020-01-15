class HomeController < ApplicationController

  def index
    @dishes = Dish.includes(:user).page(params[:page]).per(7).order("created_at DESC")
    
  end
end
