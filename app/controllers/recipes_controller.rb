class RecipesController < ApplicationController

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.create(params_dish)
    @dish.save   
  end

  def show
    @dish = Dish.find(params[:id])
  end

  private
  def params_dish
    params.require(:dish).permit(
      :title,
      :info,
      :image
      ).merge(user_id: current_user.id,)
  end
end
