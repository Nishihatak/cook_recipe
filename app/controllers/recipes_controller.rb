class RecipesController < ApplicationController

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.create(params_dish)
  end


def show
  @dish = Dish.find(params[:id])
end

def edit
  @dish = Dish.find(params[:id])
  @recipes = @dish.recipes
end

def update
  @dish = Dish.find(params[:id])
  if @dish = @dish.update(params_dish)
    redirect_to root_path
  else
    render :edit
  end
end

def destroy
  dish = Dish.find(params[:id])
    dish.destroy if dish.user_id == current_user.id
end

  private
  def params_dish
    params.require(:dish).permit(
      :title,
      :info,
      :image,
      :food,
      :recipe
      ).merge(user_id: current_user.id)
  end

  def params_recipe
    params.require(:recipes).permit(recipe:[])
  end
end
