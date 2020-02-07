class RecipesController < ApplicationController

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(params_dish)
      unless @dish.valid?
        render action: :new
      else
        @dish.save
      end
  end


def show
  @dish = Dish.find(params[:id])
end

def edit
  @dish = Dish.find(params[:id])
end

def update
  @dish = Dish.new(params_dish)
  unless @dish.valid?
    render action: :edit and return 
  end
  
  @dish = Dish.find(params[:id])
  if @dish = @dish.update(params_dish)
    redirect_to root_path
  else
    render action: :edit and return 
  end
end

def destroy
  dish = Dish.find(params[:id])
    dish.destroy if dish.user_id == current_user.id
    redirect_to root_path
end

  private
  def params_dish
    params.require(:dish).permit(
      :title,
      :info,
      :image,
      :food,
      :recipe,
      :cooktime
      ).merge(user_id: current_user.id)
  end

  def params_recipe
    params.require(:recipes).permit(recipe:[])
  end
end
