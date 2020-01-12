class HomeController < ApplicationController

  def index
    @dishes = Dish.includes(:user).order("created_at DESC").limit(3)
  end
end
