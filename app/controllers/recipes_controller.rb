class RecipesController < ApplicationController

  def new
    @dish = Dish.new
    @recipe = Recipe.new
  end

  def create
    @dish = Dish.create(params_dish)
    if @dish.save && params[:recipes][:recipe].present? && params[:recipes][:image].present?
      @recipes =params.require(:recipes).permit(recipe:[],image:[]).merge(dish_id: @dish.id)
      @recipes.require(:image).zip(@recipes.require(:recipe)).each do |image,recipe|
        @recipe = Recipe.create(recipe: recipe,image: image, dish_id: @dish.id)
      end  
    end
  end

def show
    @dish = Dish.find(params[:id])
    @recipes = @dish.recipes
end

def edit
  @dish = Dish.find(params[:id])
  @recipes = @dish.recipes
end

def update
  @dish = Dish.create(params_dish)
  if @dish.save && params[:recipes][:recipe].present? &&
    @recipes = Pecipe.new(params_recipe)
    @recipes.require(:image).zip(@recipes.require(:recipe)).each do |image,recipe|
      @recipe = Recipe.update(recipe: recipe,image: image, dish_id: @dish.id)
    end  
  end
end

  private
  def params_dish
    params.require(:dish).permit(
      :title,
      :info,
      :image
      ).merge(user_id: current_user.id,)
  end

  def params_recipe
    params.require(:recipes).permit(recipe:[],image:[]).merge(dish_id: @dish.id)
  end
end
